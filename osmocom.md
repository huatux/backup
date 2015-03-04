编译osmocomBB
#依赖库
apt-get install libtool shtool automake autoconf git-core pkg-config make gcc
--------------------------------------------------------------------------------------------------------------------------------------------
#ARM工具链  GCC 4.5.2 |Binutils 2.21.1 |Newlib 1.19 
#工具链依赖库
apt-get install build-essential libgmp3-dev libmpfr-dev libx11-6 libx11-dev texinfo flex bison libncurses5 libncurses5-dbg libncurses5-dev libncursesw5 libncursesw5-dbg libncursesw5-dev zlibc zlib1g-dev libmpfr4 libmpc-dev
cd /tmp
mkdir src build /usr/local/arm/
cd src/
wget http://ftp.gnu.org/gnu/gcc/gcc-4.5.2/gcc-4.5.2.tar.bz2
wget http://ftp.gnu.org/gnu/binutils/binutils-2.21.1a.tar.bz2
wget ftp://sources.redhat.com/pub/newlib/newlib-1.19.0.tar.gz
tar jxvf gcc-4.5.2.tar.bz2
tar jxvf binutils-2.21.1a.tar.bz2
tar zxvf newlib-1.19.0.tar.gz

OLD_PATH=$PATH
export PATH=/usr/local/arm/bin:$PATH

mkdir -p /tmp/build/binutils-2.21.1 /tmp/build/gcc-4.5.2 /tmp/build/newlib-1.19.0

cd /tmp/build/binutils-2.21.1
../../src/binutils-2.21.1/configure --target=arm-elf --prefix=/usr/local/arm --enable-interwork --enable-threads=posix --enable-multilib --with-float=soft --disable-werror
make all 
make install

echo "
MULTILIB_OPTIONS += mno-thumb-interwork/mthumb-interwork
MULTILIB_DIRNAMES += normal interwork
" >> ../../src/gcc-4.5.2/gcc/config/arm/t-arm-elf
cd /tmp/build/gcc-4.5.2
../../src/gcc-4.5.2/configure --target=arm-elf --prefix=/usr/local/arm --enable-interwork --enable-multilib --with-float=soft --disable-werror  --enable-languages="c,c++" --with-newlib --with-headers=$SRCDIR/$NEWLIB_DIR/newlib/libc/include --with-system-zlib --disable-shared
make all-gcc 
make install-gcc

cd /tmp/build/newlib-1.19.0
../../src/newlib-1.19.0/configure --target=arm-elf --prefix=/usr/local/arm --enable-interwork --enable-multilib --with-float=soft --disable-werror
make all
make install

cd /tmp/build/gcc-4.5.2
make all
make install

export PATH=$OLD_PATH
-----------------------------------------------------------------------------------------------------------------------------------------------
#工具链环境完成，以后再每次需要arm工具链编译东西时 export PATH=/usr/local/arm/bin:$PATH
#libosmocore
apt-get install libpcsclite-dev
git clone git://git.osmocom.org/libosmocore.git
cd libosmocore/
autoreconf -i
./configure
make
make install
cd ..
#osmocomBB
git clone git://git.osmocom.org/osmocom-bb.git
cd osmocom-bb
git pull --rebase
export PATH=/usr/local/arm/bin:$PATH
cd src
make
----------------------------------------------------------------------------------------------------------------------------------------------
echo /usr/local/lib > /etc/ld.so.conf.d/libosmocon.conf
ldconfig

./host/osmocon/osmocon -m c123xor -p /dev/ttyUSB0 ./target/firmware/board/compal_e88/layer1.compalram.bin
./host/layer23/src/misc/cell_log
./host/layer23/src/misc/ccch_scan -i 127.0.0.1 -a ARFCN NR
-----------------------------------from osmocom---gnu-arm-build.sh--------------------------------------------------------------
#!/bin/sh

ROOT=`pwd`
SRCDIR=$ROOT/src
BUILDDIR=$ROOT/build
PREFIX=$ROOT/install

GCC_SRC=gcc-4.5.2.tar.bz2
GCC_VERSION=4.5.2
GCC_DIR=gcc-$GCC_VERSION

BINUTILS_SRC=binutils-2.21.1a.tar.bz2
BINUTILS_VERSION=2.21.1
BINUTILS_DIR=binutils-$BINUTILS_VERSION

NEWLIB_SRC=newlib-1.19.0.tar.gz
NEWLIB_VERSION=1.19.0
NEWLIB_DIR=newlib-$NEWLIB_VERSION

#INSIGHT_SRC=insight-6.8-1.tar.bz2
#INSIGHT_VERSION=6.8-1
#INSIGHT_DIR=insight-$INSIGHT_VERSION

echo "I will build an arm-elf cross-compiler:

  Prefix: $PREFIX
  Sources: $SRCDIR
  Build files: $BUILDDIR

Press ^C now if you do NOT want to do this."
read IGNORE

#
# Helper functions.
#
unpack_source()
{
(
    cd $SRCDIR
    ARCHIVE_SUFFIX=${1##*.}
    if [ "$ARCHIVE_SUFFIX" = "gz" ]; then
      tar zxvf $1
    elif [ "$ARCHIVE_SUFFIX" = "bz2" ]; then
      tar jxvf $1
    else
      echo "Unknown archive format for $1"
      exit 1
    fi
)
}

# Create all the directories we need.
#mkdir -p $SRCDIR $BUILDDIR $PREFIX

(
cd $SRCDIR

# Unpack the sources.
unpack_source $(basename $GCC_SRC)
unpack_source $(basename $BINUTILS_SRC)
unpack_source $(basename $NEWLIB_SRC)
#unpack_source $(basename $INSIGHT_SRC)
)

# Set the PATH to include the binaries we're going to build.
OLD_PATH=$PATH
export PATH=$PREFIX/bin:$PATH

#
# Stage 1: Build binutils
#
(
(
# autoconf check.
cd $SRCDIR/$BINUTILS_DIR

) || exit 1

# Now, build it.
mkdir -p $BUILDDIR/$BINUTILS_DIR
cd $BUILDDIR/$BINUTILS_DIR

$SRCDIR/$BINUTILS_DIR/configure --target=arm-elf --prefix=$PREFIX \
    --enable-interwork --enable-threads=posix --enable-multilib --with-float=soft --disable-werror \
    && make all install

) || exit 1

#
# Stage 2: Patch the GCC multilib rules, then build the gcc compiler only
#
(
MULTILIB_CONFIG=$SRCDIR/$GCC_DIR/gcc/config/arm/t-arm-elf

echo "

MULTILIB_OPTIONS += mno-thumb-interwork/mthumb-interwork
MULTILIB_DIRNAMES += normal interwork

" >> $MULTILIB_CONFIG

mkdir -p $BUILDDIR/$GCC_DIR
cd $BUILDDIR/$GCC_DIR

$SRCDIR/$GCC_DIR/configure --target=arm-elf --prefix=$PREFIX \
    --enable-interwork --enable-multilib --with-float=soft --disable-werror \
    --enable-languages="c,c++" --with-newlib \
    --with-headers=$SRCDIR/$NEWLIB_DIR/newlib/libc/include \
    --with-system-zlib --disable-shared \
    && make all-gcc install-gcc

) || exit 1

#
# Stage 3: Build and install newlib
#
(
(
# Same issue, we have to patch to support makeinfo >= 4.11.
cd $SRCDIR/$NEWLIB_DIR

) || exit 1

# And now we can build it.
mkdir -p $BUILDDIR/$NEWLIB_DIR
cd $BUILDDIR/$NEWLIB_DIR

$SRCDIR/$NEWLIB_DIR/configure --target=arm-elf --prefix=$PREFIX \
    --enable-interwork --enable-multilib --with-float=soft --disable-werror \
    && make all install

) || exit 1

#
# Stage 4: Build and install the rest of GCC.
#
(
cd $BUILDDIR/$GCC_DIR

make all install

) || exit 1

#
# Stage 5: Build and install INSIGHT.
#
# edit: we currently don't need that for OsmocomBB

#(
# Now, build it.
#mkdir -p $BUILDDIR/$INSIGHT_DIR

#cd $BUILDDIR/$INSIGHT_DIR

#$SRCDIR/$INSIGHT_DIR/configure --target=arm-elf --prefix=$PREFIX \
#    --enable-interwork --enable-multilib --with-float=soft --disable-werror \
#    && make all install

#) || exit 1


export PATH=$OLD_PATH

echo "
Build complete! Add $PREFIX/bin to your PATH to make arm-elf-gcc and friends
accessible directly.
"
--------------------------from osmocom------------gcc 4.8 patch----------------------------------------------------------------------
diff --git a/src/target/firmware/board/compal/highram.lds b/src/target/firmware/board/compal/highram.lds
index 482c4c2..9309d83 100644
--- a/src/target/firmware/board/compal/highram.lds
+++ b/src/target/firmware/board/compal/highram.lds
@@ -59,6 +59,7 @@ SECTIONS
LONG(SIZEOF(.ctors) / 4 - 2)
/* ctor pointers */
KEEP(*(SORT(.ctors)))
+ KEEP(*(SORT(.init_array)))
/* end of list */
LONG(0)
} > RAM
diff --git a/src/target/firmware/board/compal/ram.lds b/src/target/firmware/board/compal/ram.lds
index 4d3a1e4..b52b619 100644
--- a/src/target/firmware/board/compal/ram.lds
+++ b/src/target/firmware/board/compal/ram.lds
@@ -62,6 +62,7 @@ SECTIONS
LONG(SIZEOF(.ctors) / 4 - 2)
/* ctor pointers */
KEEP(*(SORT(.ctors)))
+ KEEP(*(SORT(.init_array)))
/* end of list */
LONG(0)
} > LRAM
diff --git a/src/target/firmware/board/compal_e88/flash.lds b/src/target/firmware/board/compal_e88/flash.lds
index cf0f6a4..67d727f 100644
--- a/src/target/firmware/board/compal_e88/flash.lds
+++ b/src/target/firmware/board/compal_e88/flash.lds
@@ -54,6 +54,7 @@ SECTIONS
LONG(SIZEOF(.ctors) / 4 - 2)
/* ctor pointers */
KEEP(*(SORT(.ctors)))
+ KEEP(*(SORT(.init_array)))
/* end of list */
LONG(0)
} > FLASH
diff --git a/src/target/firmware/board/compal_e88/loader.lds b/src/target/firmware/board/compal_e88/loader.lds
index a7a001f..22febff 100644
--- a/src/target/firmware/board/compal_e88/loader.lds
+++ b/src/target/firmware/board/compal_e88/loader.lds
@@ -67,6 +67,7 @@ SECTIONS
LONG(SIZEOF(.ctors) / 4 - 2)
/* ctor pointers */
KEEP(*(SORT(.ctors)))
+ KEEP(*(SORT(.init_array)))
/* end of list */
LONG(0)
} > FLASH
diff --git a/src/target/firmware/board/mediatek/ram.lds b/src/target/firmware/board/mediatek/ram.lds
index a2af560..7083c27 100644
--- a/src/target/firmware/board/mediatek/ram.lds
+++ b/src/target/firmware/board/mediatek/ram.lds
@@ -51,6 +51,7 @@ SECTIONS
LONG(SIZEOF(.ctors) / 4 - 2)
/* ctor pointers */
KEEP(*(SORT(.ctors)))
+ KEEP(*(SORT(.init_array)))
/* end of list */
LONG(0)
} > LRAM

