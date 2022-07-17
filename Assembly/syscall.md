### Via interrupt

On both Linux x86 and Linux x86_64 systems you can make a system call by calling interrupt $0x80 using the int instruction. Parameters are passed by setting the general purpose registers as following:
register mapping for system call invocation using int $0x80

| system call number	| 1st parameter	| 2nd parameter	| 3rd parameter	| 4th parameter | 5th parameter	| 6th parameter	| result |
| eax |	ebx	| ecx	| edx	| esi	| edi	| ebp	| eax |


The system call numbers are described in the Linux generated file $build/‌arch/‌x86/‌include/‌generated/‌uapi/‌asm/‌unistd_32.h or $build/‌usr/‌include/‌asm/‌unistd_32.h. The latter could also be present on your Linux system, just omit the $build.

All registers are preserved during a system call with int $0x80.


