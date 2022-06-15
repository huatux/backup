/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20150410-64
 * Copyright (c) 2000 - 2015 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of dsdt.dat, Wed Jul 15 03:21:12 2015
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000BB7B (47995)
 *     Revision         0x02
 *     Checksum         0xE3
 *     OEM ID           "MSI_NB"
 *     OEM Table ID     "MEGABOOK"
 *     OEM Revision     0x00000015 (21)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20051117 (537202967)
 */
DefinitionBlock ("dsdt.aml", "DSDT", 2, "MSI_NB", "MEGABOOK", 0x00000015)
{
    /*
     * iASL Warning: There were 6 external control methods found during
     * disassembly, but additional ACPI tables to resolve these externals
     * were not specified. This resulting disassembler output file may not
     * compile because the disassembler did not know how many arguments
     * to assign to these methods. To specify the tables needed to resolve
     * external control method references, the -e option can be used to
     * specify the filenames. Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.PCI0.IEIT.EITV, MethodObj)    // Warning: Unresolved method, guessing 0 arguments
    External (ECST, MethodObj)    // Warning: Unresolved method, guessing 1 arguments
    External (HDOS, MethodObj)    // Warning: Unresolved method, guessing 0 arguments
    External (HNOT, MethodObj)    // Warning: Unresolved method, guessing 1 arguments
    External (IDAB, MethodObj)    // Warning: Unresolved method, guessing 0 arguments
    External (TNOT, MethodObj)    // Warning: Unresolved method, guessing 0 arguments

    External (_PR_.AAC0, UnknownObj)
    External (_PR_.ACRT, UnknownObj)
    External (_PR_.APSV, UnknownObj)
    External (_PR_.CPU0._PPC, UnknownObj)
    External (CFGD, UnknownObj)
    External (HWID, IntObj)
    External (PDC0, UnknownObj)
    External (PDC1, UnknownObj)
    External (PDC2, UnknownObj)
    External (PDC3, UnknownObj)
    External (PDC4, UnknownObj)
    External (PDC5, UnknownObj)
    External (PDC6, UnknownObj)
    External (PDC7, UnknownObj)

    Name (SP1O, 0x164E)
    Name (IOCB, 0x0A20)
    Name (IOWB, 0x0680)
    Name (IOBB, 0x0A10)
    Name (IOBL, 0x10)
    Name (IOWL, 0x10)
    Name (IOCL, 0x10)
    Name (SMBS, 0x0580)
    Name (SMBL, 0x20)
    Name (PMBS, 0x0400)
    Name (PMLN, 0x80)
    Name (GPBS, 0x0500)
    Name (GPLN, 0x80)
    Name (SMIP, 0xB2)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (SMCR, 0x0430)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (FLSZ, 0x00300000)
    Name (SRCB, 0xFED1C000)
    Name (RCLN, 0x4000)
    Name (TCBR, 0xFED08000)
    Name (TCLT, 0x1000)
    Name (PEBS, 0xF8000000)
    Name (PELN, 0x04000000)
    Name (LAPB, 0xFEE00000)
    Name (EGPB, 0xFED19000)
    Name (MCHB, 0xFED10000)
    Name (VTBS, 0xFED90000)
    Name (VTLN, 0x4000)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, One)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (DPPB, 0xFED98000)
    Name (DPPL, 0x8000)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (FUWS, 0x04)
    Name (BSH, Zero)
    Name (BEL, One)
    Name (BEH, 0x02)
    Name (BRH, 0x03)
    Name (BTF, 0x04)
    Name (BHC, 0x05)
    Name (BYB, 0x06)
    Name (BPH, 0x07)
    Name (BSHS, 0x08)
    Name (BELC, 0x09)
    Name (BRHP, 0x0A)
    Name (BTFC, 0x0B)
    Name (BEHP, 0x0C)
    Name (BPHS, 0x0D)
    Name (BELP, 0x0E)
    Name (BTL, 0x10)
    Name (BTFP, 0x11)
    Name (BSR, 0x14)
    Name (BOF, 0x20)
    Name (BEF, 0x21)
    Name (BLLE, 0x22)
    Name (BLLC, 0x23)
    Name (BLCA, 0x24)
    Name (BLLS, 0x25)
    Name (BLLP, 0x26)
    Name (BLLD, 0x27)
    Name (BHBE, 0x30)
    Name (BHBC, 0x31)
    Name (BHBN, 0x32)
    Name (BHBM, 0x33)
    Name (TRTP, One)
    Name (WDTE, One)
    Name (TRTD, 0x02)
    Name (TRTI, 0x03)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x0C)
    Name (DSLC, 0x0E)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (SOOT, 0x35)
    Name (PDBR, 0x4D)
    Name (DSSP, Zero)
    Name (FHPP, Zero)
    Name (MBEC, Zero)
    Name (SS1, One)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (IOST, 0x4400)
    Name (TOPM, 0x00000000)
    Name (ROMS, 0xFFE00000)
    Name (VGAF, One)
    OperationRegion (GNVS, SystemMemory, 0xCA45BE18, 0x01CA)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        LIDS,   8, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        Offset (0x25), 
        REVN,   8, 
        RES3,   8, 
        Offset (0x28), 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        C67L,   8, 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        CMCP,   8, 
        CIRP,   8, 
        SMSC,   8, 
        W381,   8, 
        SMC1,   8, 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        KSV0,   32, 
        KSV1,   8, 
        Offset (0x67), 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        Offset (0x6E), 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        Offset (0x74), 
        MEFE,   8, 
        DSTS,   8, 
        Offset (0x78), 
        TPMP,   8, 
        TPME,   8, 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        BID,    8, 
        PLID,   8, 
        Offset (0xAA), 
        ASLB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        ITVF,   8, 
        ITVM,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        I409,   8, 
        I509,   8, 
        I609,   8, 
        I709,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        Offset (0xE1), 
        OSCC,   8, 
        NEXP,   8, 
        SBV1,   8, 
        SBV2,   8, 
        Offset (0xEB), 
        DSEN,   8, 
        ECON,   8, 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        VFN2,   8, 
        VFN3,   8, 
        VFN4,   8, 
        Offset (0x100), 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        EBAS,   32, 
        CPSP,   32, 
        EECP,   32, 
        EVCP,   32, 
        XBAS,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
        Offset (0x157), 
        ATMC,   8, 
        PTMC,   8, 
        ATRA,   8, 
        PTRA,   8, 
        PNHM,   32, 
        TBAB,   32, 
        TBAH,   32, 
        RTIP,   8, 
        TSOD,   8, 
        ATPC,   8, 
        PTPC,   8, 
        PFLV,   8, 
        BREV,   8, 
        SGMD,   8, 
        SGFL,   8, 
        PWOK,   8, 
        HLRS,   8, 
        DSEL,   8, 
        ESEL,   8, 
        PSEL,   8, 
        PWEN,   8, 
        PRST,   8, 
        MXD1,   32, 
        MXD2,   32, 
        MXD3,   32, 
        MXD4,   32, 
        MXD5,   32, 
        MXD6,   32, 
        MXD7,   32, 
        MXD8,   32, 
        GBAS,   16, 
        SGGP,   8, 
        PXFX,   8, 
        PXDY,   8, 
        PXFD,   8, 
        Offset (0x19D), 
        ALFP,   8, 
        IMON,   8, 
        PDTS,   8, 
        PKGA,   8, 
        PAMT,   8, 
        AC0F,   8, 
        AC1F,   8, 
        DTS3,   8, 
        DTS4,   8, 
        Offset (0x1B2), 
        XHCI,   8, 
        XHPM,   8, 
        Offset (0x1B7), 
        XTUB,   32, 
        XTUS,   32, 
        XMPB,   32, 
        Offset (0x1C4), 
        LPMV,   8, 
        AOAC,   8, 
        SLDR,   32
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x24)
        {
            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }
        })
        Name (AR00, Package (0x24)
        {
            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR0E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR0E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR0F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR0F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR01, Package (0x10)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKG, 
                Zero
            }
        })
        Name (AR01, Package (0x10)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x16
            }
        })
        Name (PR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR0A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR0A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR0B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR0B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR0C, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR0C, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00 ())
                }

                Return (PR00 ())
            }

            OperationRegion (HBUS, PCI_Config, Zero, 0x0100)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                EPEN,   1, 
                    ,   11, 
                EPBR,   20, 
                Offset (0x48), 
                MHEN,   1, 
                    ,   14, 
                MHBR,   17, 
                Offset (0x50), 
                GCLK,   1, 
                Offset (0x54), 
                D0EN,   1, 
                Offset (0x60), 
                PXEN,   1, 
                PXSZ,   2, 
                    ,   23, 
                PXBR,   6, 
                Offset (0x68), 
                DIEN,   1, 
                    ,   11, 
                DIBR,   20, 
                Offset (0x70), 
                    ,   20, 
                MEBR,   12, 
                Offset (0x80), 
                    ,   4, 
                PM0H,   2, 
                Offset (0x81), 
                PM1L,   2, 
                    ,   2, 
                PM1H,   2, 
                Offset (0x82), 
                PM2L,   2, 
                    ,   2, 
                PM2H,   2, 
                Offset (0x83), 
                PM3L,   2, 
                    ,   2, 
                PM3H,   2, 
                Offset (0x84), 
                PM4L,   2, 
                    ,   2, 
                PM4H,   2, 
                Offset (0x85), 
                PM5L,   2, 
                    ,   2, 
                PM5H,   2, 
                Offset (0x86), 
                PM6L,   2, 
                    ,   2, 
                PM6H,   2, 
                Offset (0x87), 
                Offset (0xA8), 
                    ,   20, 
                TUUD,   19, 
                Offset (0xBC), 
                    ,   20, 
                TLUD,   12, 
                Offset (0xC8), 
                    ,   7, 
                HTSE,   1
            }

            OperationRegion (MCHT, SystemMemory, 0xFED10000, 0x1100)
            Field (MCHT, ByteAcc, NoLock, Preserve)
            {
            }

            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, _Y00)
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    ,, , TypeStatic)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F300,         // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xFEAFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEB00000,         // Length
                    ,, _Y0E, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000010000, // Range Minimum
                    0x000000000001FFFF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000010000, // Length
                    ,, _Y0F, AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUF0, \_SB.PCI0._Y00._MAX, PBMX)  // _MAX: Maximum Base Address
                PBMX = ((PELN >> 0x14) - 0x02)
                CreateWordField (BUF0, \_SB.PCI0._Y00._LEN, PBLN)  // _LEN: Length
                PBLN = ((PELN >> 0x14) - One)
                If (PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C0LN)  // _LEN: Length
                    C0LN = Zero
                }

                If ((PM1L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C0RW)  // _RW_: Read-Write Status
                    C0RW = Zero
                }

                If (PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C4LN)  // _LEN: Length
                    C4LN = Zero
                }

                If ((PM1H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C4RW)  // _RW_: Read-Write Status
                    C4RW = Zero
                }

                If (PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, C8LN)  // _LEN: Length
                    C8LN = Zero
                }

                If ((PM2L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, C8RW)  // _RW_: Read-Write Status
                    C8RW = Zero
                }

                If (PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, CCLN)  // _LEN: Length
                    CCLN = Zero
                }

                If ((PM2H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, CCRW)  // _RW_: Read-Write Status
                    CCRW = Zero
                }

                If (PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D0LN)  // _LEN: Length
                    D0LN = Zero
                }

                If ((PM3L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D0RW)  // _RW_: Read-Write Status
                    D0RW = Zero
                }

                If (PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D4LN)  // _LEN: Length
                    D4LN = Zero
                }

                If ((PM3H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D4RW)  // _RW_: Read-Write Status
                    D4RW = Zero
                }

                If (PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, D8LN)  // _LEN: Length
                    D8LN = Zero
                }

                If ((PM4L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, D8RW)  // _RW_: Read-Write Status
                    D8RW = Zero
                }

                If (PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, DCLN)  // _LEN: Length
                    DCLN = Zero
                }

                If ((PM4H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, DCRW)  // _RW_: Read-Write Status
                    DCRW = Zero
                }

                If (PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E0LN)  // _LEN: Length
                    E0LN = Zero
                }

                If ((PM5L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E0RW)  // _RW_: Read-Write Status
                    E0RW = Zero
                }

                If (PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E4LN)  // _LEN: Length
                    E4LN = Zero
                }

                If ((PM5H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E4RW)  // _RW_: Read-Write Status
                    E4RW = Zero
                }

                If (PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, E8LN)  // _LEN: Length
                    E8LN = Zero
                }

                If ((PM6L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, E8RW)  // _RW_: Read-Write Status
                    E8RW = Zero
                }

                If (PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, ECLN)  // _LEN: Length
                    ECLN = Zero
                }

                If ((PM6H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, ECRW)  // _RW_: Read-Write Status
                    ECRW = Zero
                }

                If (PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, F0LN)  // _LEN: Length
                    F0LN = Zero
                }

                If ((PM0H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0D._RW, F0RW)  // _RW_: Read-Write Status
                    F0RW = Zero
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._LEN, M1LN)  // _LEN: Length
                M1MN = (TLUD << 0x14)
                M1LN = ((M1MX - M1MN) + One)
                If ((OSYS <= 0x07D3))
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0F._LEN, MSLN)  // _LEN: Length
                    MSLN = Zero
                }
                Else
                {
                    CreateQWordField (BUF0, \_SB.PCI0._Y0F._LEN, M2LN)  // _LEN: Length
                    CreateQWordField (BUF0, \_SB.PCI0._Y0F._MIN, M2MN)  // _MIN: Minimum Base Address
                    CreateQWordField (BUF0, \_SB.PCI0._Y0F._MAX, M2MX)  // _MAX: Maximum Base Address
                    If ((TUUD >= 0x1000))
                    {
                        M2MN = (TUUD << 0x14)
                        M2LN = (0x0000001000000000 - (TUUD << 0x14))
                    }
                    Else
                    {
                        M2MN = 0x0000000100000000
                        M2LN = 0x0000000F00000000
                    }

                    M2MX = ((M2MN + M2LN) - One)
                }

                Return (BUF0) /* \_SB_.PCI0.BUF0 */
            }

            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Name (XCNT, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Local0 = Arg3
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (^XHC.CUID (Arg0))
                {
                    Return (^XHC.POSC (Arg1, Arg2, Arg3))
                }
                Else
                {
                    If (_OSI ("Windows 2012"))
                    {
                        If ((XCNT == Zero))
                        {
                            ^XHC.XSEL ()
                            XCNT++
                        }
                    }
                }

                If (((Arg0 == GUID) && NEXP))
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If (~(CDW1 & One))
                    {
                        If ((CTRL & One))
                        {
                            NHPG ()
                        }

                        If ((CTRL & 0x04))
                        {
                            NPME ()
                        }
                    }

                    If ((Arg1 != One))
                    {
                        CDW1 |= 0x08
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0.CTRL */
                    OSCC = CTRL /* \_SB_.PCI0.CTRL */
                    Return (Local0)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Local0)
                }
            }

            Scope (\_SB.PCI0)
            {
                Method (AR00, 0, NotSerialized)
                {
                    Return (^^AR00) /* \_SB_.AR00 */
                }

                Method (PR00, 0, NotSerialized)
                {
                    Return (^^PR00) /* \_SB_.PR00 */
                }

                Method (AR01, 0, NotSerialized)
                {
                    Return (^^AR01) /* \_SB_.AR01 */
                }

                Method (PR01, 0, NotSerialized)
                {
                    Return (^^PR01) /* \_SB_.PR01 */
                }

                Method (AR02, 0, NotSerialized)
                {
                    Return (^^AR02) /* \_SB_.AR02 */
                }

                Method (PR02, 0, NotSerialized)
                {
                    Return (^^PR02) /* \_SB_.PR02 */
                }

                Method (AR04, 0, NotSerialized)
                {
                    Return (^^AR04) /* \_SB_.AR04 */
                }

                Method (PR04, 0, NotSerialized)
                {
                    Return (^^PR04) /* \_SB_.PR04 */
                }

                Method (AR05, 0, NotSerialized)
                {
                    Return (^^AR05) /* \_SB_.AR05 */
                }

                Method (PR05, 0, NotSerialized)
                {
                    Return (^^PR05) /* \_SB_.PR05 */
                }

                Method (AR06, 0, NotSerialized)
                {
                    Return (^^AR06) /* \_SB_.AR06 */
                }

                Method (PR06, 0, NotSerialized)
                {
                    Return (^^PR06) /* \_SB_.PR06 */
                }

                Method (AR07, 0, NotSerialized)
                {
                    Return (^^AR07) /* \_SB_.AR07 */
                }

                Method (PR07, 0, NotSerialized)
                {
                    Return (^^PR07) /* \_SB_.PR07 */
                }

                Method (AR08, 0, NotSerialized)
                {
                    Return (^^AR08) /* \_SB_.AR08 */
                }

                Method (PR08, 0, NotSerialized)
                {
                    Return (^^PR08) /* \_SB_.PR08 */
                }

                Method (AR09, 0, NotSerialized)
                {
                    Return (^^AR09) /* \_SB_.AR09 */
                }

                Method (PR09, 0, NotSerialized)
                {
                    Return (^^PR09) /* \_SB_.PR09 */
                }

                Method (AR0E, 0, NotSerialized)
                {
                    Return (^^AR0E) /* \_SB_.AR0E */
                }

                Method (PR0E, 0, NotSerialized)
                {
                    Return (^^PR0E) /* \_SB_.PR0E */
                }

                Method (AR0F, 0, NotSerialized)
                {
                    Return (^^AR0F) /* \_SB_.AR0F */
                }

                Method (PR0F, 0, NotSerialized)
                {
                    Return (^^PR0F) /* \_SB_.PR0F */
                }

                Method (AR0A, 0, NotSerialized)
                {
                    Return (^^AR0A) /* \_SB_.AR0A */
                }

                Method (PR0A, 0, NotSerialized)
                {
                    Return (^^PR0A) /* \_SB_.PR0A */
                }

                Method (AR0B, 0, NotSerialized)
                {
                    Return (^^AR0B) /* \_SB_.AR0B */
                }

                Method (PR0B, 0, NotSerialized)
                {
                    Return (^^PR0B) /* \_SB_.PR0B */
                }

                Method (AR0C, 0, NotSerialized)
                {
                    Return (^^AR0C) /* \_SB_.AR0C */
                }

                Method (PR0C, 0, NotSerialized)
                {
                    Return (^^PR0C) /* \_SB_.PR0C */
                }
            }

            Device (TPMX)
            {
                Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Name (CRS, ResourceTemplate ()
                {
                    Memory32Fixed (ReadOnly,
                        0xFED40000,         // Address Base
                        0x00005000,         // Address Length
                        )
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    If (TPMF)
                    {
                        Return (Zero)
                    }

                    Return (CRS) /* \_SB_.PCI0.TPMX.CRS_ */
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (PCI0.LPCB.LPC1, PCI_Config, 0x40, 0xC0)
                    Field (PCI0.LPCB.LPC1, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x20), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                        Offset (0x28), 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8, 
                        Offset (0x6C), 
                        Offset (0x6D), 
                        Offset (0x6E), 
                        XUSB,   1
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PARC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSA) /* \_SB_.PRSA */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PARC & 0x0F))
                            Return (RTLA) /* \_SB_.LNKA._CRS.RTLA */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PARC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PARC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PBRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSB) /* \_SB_.PRSB */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PBRC & 0x0F))
                            Return (RTLB) /* \_SB_.LNKB._CRS.RTLB */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PBRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PBRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PCRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSC) /* \_SB_.PRSC */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PCRC & 0x0F))
                            Return (RTLC) /* \_SB_.LNKC._CRS.RTLC */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PCRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PCRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PDRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSD) /* \_SB_.PRSD */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PDRC & 0x0F))
                            Return (RTLD) /* \_SB_.LNKD._CRS.RTLD */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PDRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PDRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PERC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSE) /* \_SB_.PRSE */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PERC & 0x0F))
                            Return (RTLE) /* \_SB_.LNKE._CRS.RTLE */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PERC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PERC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PFRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSF) /* \_SB_.PRSF */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PFRC & 0x0F))
                            Return (RTLF) /* \_SB_.LNKF._CRS.RTLF */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PFRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PFRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PGRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSG) /* \_SB_.PRSG */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PGRC & 0x0F))
                            Return (RTLG) /* \_SB_.LNKG._CRS.RTLG */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PGRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PGRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PHRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSH) /* \_SB_.PRSH */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PHRC & 0x0F))
                            Return (RTLH) /* \_SB_.LNKH._CRS.RTLH */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PHRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PHRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, 0x40, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                    IOD0,   8, 
                    IOD1,   8, 
                    Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0093,             // Range Minimum
                            0x0093,             // Range Maximum
                            0x01,               // Alignment
                            0x0D,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800") /* Intel 82802 Firmware Hub Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y10)
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((OSYS >= 0x07D1))
                        {
                            If (HPAE)
                            {
                                Return (0x0F)
                            }
                        }
                        Else
                        {
                            If (HPAE)
                            {
                                Return (0x0B)
                            }
                        }

                        Return (Zero)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (HPAE)
                        {
                            CreateDWordField (BUF0, \_SB.PCI0.LPCB.HPET._Y10._BAS, HPT0)  // _BAS: Base Address
                            If ((HPAS == One))
                            {
                                HPT0 = 0xFED01000
                            }

                            If ((HPAS == 0x02))
                            {
                                HPT0 = 0xFED02000
                            }

                            If ((HPAS == 0x03))
                            {
                                HPT0 = 0xFED03000
                            }
                        }

                        Return (BUF0) /* \_SB_.PCI0.LPCB.HPET.BUF0 */
                    }
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0200,             // Range Minimum
                            0x0200,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x54,               // Length
                            )
                        IO (Decode16,
                            0x0458,             // Range Minimum
                            0x0458,             // Range Maximum
                            0x01,               // Alignment
                            0x28,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (CWDT)
                {
                    Name (_HID, EisaId ("INT3F0D") /* ACPI Motherboard Resources */)  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0454,             // Range Minimum
                            0x0454,             // Range Maximum
                            0x04,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If ((WDTE == One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Return (BUF0) /* \_SB_.PCI0.LPCB.CWDT.BUF0 */
                    }
                }

                Device (SIO1)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Method (_UID, 0, NotSerialized)  // _UID: Unique ID
                    {
                        Return (SP1O) /* \SP1O */
                    }

                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y11)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            )
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y12)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            )
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y13)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (((SP1O < 0x03F0) && (SP1O > 0xF0)))
                        {
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y11._MIN, GPI0)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y11._MAX, GPI1)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.LPCB.SIO1._Y11._LEN, GPIL)  // _LEN: Length
                            GPI0 = SP1O /* \SP1O */
                            GPI1 = SP1O /* \SP1O */
                            GPIL = 0x02
                        }

                        If (IOWB)
                        {
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y12._MIN, GP20)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y12._MAX, GP21)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.LPCB.SIO1._Y12._LEN, GPL2)  // _LEN: Length
                            GP20 = IOWB /* \IOWB */
                            GP21 = IOWB /* \IOWB */
                            GPL2 = IOWL /* \IOWL */
                        }

                        If (IOBB)
                        {
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y13._MIN, GP40)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIO1._Y13._MAX, GP41)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.LPCB.SIO1._Y13._LEN, GPL4)  // _LEN: Length
                            GP40 = IOBB /* \IOBB */
                            GP41 = IOBB /* \IOBB */
                            GPL4 = IOBL /* \IOBL */
                        }

                        Return (CRS) /* \_SB_.PCI0.LPCB.SIO1.CRS_ */
                    }

                    Mutex (MUT0, 0x00)
                    Method (ENFG, 0, NotSerialized)
                    {
                        Acquire (MUT0, 0x0FFF)
                        INDX = 0x55
                    }

                    Method (EXFG, 0, NotSerialized)
                    {
                        INDX = 0xAA
                        Release (MUT0)
                    }

                    OperationRegion (RNTR, SystemIO, IOWB, 0x10)
                    Field (RNTR, ByteAcc, NoLock, Preserve)
                    {
                        PMES,   8, 
                        PMEE,   8, 
                        PMS1,   8, 
                        PMS2,   8, 
                        Offset (0x05), 
                        PME1,   8, 
                        PME2,   8, 
                        Offset (0x08), 
                        SMS1,   8, 
                        SMS2,   8, 
                        SME1,   8, 
                        SME2,   8, 
                        GPI1,   8, 
                        GPI2,   8, 
                        Offset (0x0F), 
                        GPI4,   8
                    }

                    OperationRegion (CIRR, SystemIO, IOCB, 0x08)
                    Field (CIRR, ByteAcc, NoLock, Preserve)
                    {
                        OFS0,   8, 
                        OFS1,   8, 
                        OFS2,   8, 
                        OFS3,   8, 
                        OFS4,   8, 
                        OFS5,   8, 
                        OFS6,   8, 
                        OFS7,   8
                    }

                    OperationRegion (IOID, SystemIO, SP1O, 0x02)
                    Field (IOID, ByteAcc, NoLock, Preserve)
                    {
                        INDX,   8, 
                        DATA,   8
                    }

                    IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                    {
                        CR00,   8, 
                        CR01,   8, 
                        CR02,   8, 
                        CR03,   8, 
                        CR04,   8, 
                        CR05,   8, 
                        CR06,   8, 
                        CR07,   8, 
                        CR08,   8, 
                        CR09,   8, 
                        CR0A,   8, 
                        CR0B,   8, 
                        CR0C,   8, 
                        CR0D,   8, 
                        CR0E,   8, 
                        CR0F,   8, 
                        CR10,   8, 
                        CR11,   8, 
                        CR12,   8, 
                        CR13,   8, 
                        CR14,   8, 
                        CR15,   8, 
                        CR16,   8, 
                        CR17,   8, 
                        CR18,   8, 
                        CR19,   8, 
                        CR1A,   8, 
                        CR1B,   8, 
                        CR1C,   8, 
                        CR1D,   8, 
                        CR1E,   8, 
                        CR1F,   8, 
                        CR20,   8, 
                        CR21,   8, 
                        CR22,   8, 
                        CR23,   8, 
                        CR24,   8, 
                        CR25,   8, 
                        CR26,   8, 
                        CR27,   8, 
                        CR28,   8, 
                        CR29,   8, 
                        CR2A,   8, 
                        CR2B,   8, 
                        CR2C,   8, 
                        CR2D,   8, 
                        CR2E,   8, 
                        CR2F,   8, 
                        CR30,   8, 
                        CR31,   8, 
                        CR32,   8, 
                        CR33,   8, 
                        CR34,   8, 
                        CR35,   8, 
                        CR36,   8, 
                        CR37,   8, 
                        CR38,   8, 
                        CR39,   8, 
                        CR3A,   8, 
                        CR3B,   8, 
                        CR3C,   8
                    }

                    Method (DSTA, 2, NotSerialized)
                    {
                    }

                    Method (DCNT, 2, NotSerialized)
                    {
                        ENFG ()
                        If ((Arg0 == Zero))
                        {
                            Local1 = (CR24 << 0x02)
                            If (Arg1)
                            {
                                CR02 |= 0x08
                            }
                            Else
                            {
                                CR02 &= 0xF7
                            }
                        }

                        If ((Arg0 == One))
                        {
                            Local1 = (CR25 << 0x02)
                            If (Arg1)
                            {
                                CR02 |= 0x80
                            }
                            Else
                            {
                                CR02 &= 0x7F
                            }
                        }

                        If ((Arg0 == 0x10))
                        {
                            If (Arg1)
                            {
                                CR02 |= 0x40
                            }
                            Else
                            {
                                CR02 &= 0xBF
                            }
                        }

                        RRIO (Arg0, Arg1, Local1, 0x08)
                        EXFG ()
                    }

                    Name (CRS1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            _Y14)
                        IRQNoFlags (_Y15)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y16)
                            {}
                    })
                    CreateWordField (CRS1, \_SB.PCI0.LPCB.SIO1._Y14._MIN, IO11)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0.LPCB.SIO1._Y14._MAX, IO12)  // _MAX: Maximum Base Address
                    CreateWordField (CRS1, \_SB.PCI0.LPCB.SIO1._Y15._INT, IRQM)  // _INT: Interrupts
                    CreateByteField (CRS1, \_SB.PCI0.LPCB.SIO1._Y16._DMA, DMAM)  // _DMA: Direct Memory Access
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            _Y17)
                        IRQNoFlags (_Y18)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y19)
                            {}
                    })
                    CreateWordField (CRS2, \_SB.PCI0.LPCB.SIO1._Y17._MIN, IO21)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0.LPCB.SIO1._Y17._MAX, IO22)  // _MAX: Maximum Base Address
                    CreateWordField (CRS2, \_SB.PCI0.LPCB.SIO1._Y18._INT, IRQE)  // _INT: Interrupts
                    CreateByteField (CRS2, \_SB.PCI0.LPCB.SIO1._Y19._DMA, DMAE)  // _DMA: Direct Memory Access
                    Name (CRS3, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            _Y1A)
                        IRQNoFlags (_Y1B)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y1C)
                            {}
                    })
                    CreateWordField (CRS3, \_SB.PCI0.LPCB.SIO1._Y1A._MIN, IO31)  // _MIN: Minimum Base Address
                    CreateWordField (CRS3, \_SB.PCI0.LPCB.SIO1._Y1A._MAX, IO32)  // _MAX: Maximum Base Address
                    CreateByteField (CRS3, \_SB.PCI0.LPCB.SIO1._Y1A._LEN, LEN3)  // _LEN: Length
                    CreateWordField (CRS3, \_SB.PCI0.LPCB.SIO1._Y1B._INT, IRQF)  // _INT: Interrupts
                    CreateByteField (CRS3, \_SB.PCI0.LPCB.SIO1._Y1C._DMA, DMAF)  // _DMA: Direct Memory Access
                    Name (CRS4, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x06,               // Length
                            _Y1D)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            _Y1E)
                        IRQNoFlags (_Y1F)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y20)
                            {}
                    })
                    CreateWordField (CRS4, \_SB.PCI0.LPCB.SIO1._Y1D._MIN, IO41)  // _MIN: Minimum Base Address
                    CreateWordField (CRS4, \_SB.PCI0.LPCB.SIO1._Y1D._MAX, IO42)  // _MAX: Maximum Base Address
                    CreateWordField (CRS4, \_SB.PCI0.LPCB.SIO1._Y1E._MIN, IO71)  // _MIN: Minimum Base Address
                    CreateWordField (CRS4, \_SB.PCI0.LPCB.SIO1._Y1E._MAX, IO72)  // _MAX: Maximum Base Address
                    CreateWordField (CRS4, \_SB.PCI0.LPCB.SIO1._Y1F._INT, IRQG)  // _INT: Interrupts
                    CreateByteField (CRS4, \_SB.PCI0.LPCB.SIO1._Y20._DMA, DMAG)  // _DMA: Direct Memory Access
                    Name (CRS5, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y21)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y22)
                        IRQNoFlags (_Y23)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y24)
                            {}
                    })
                    CreateWordField (CRS5, \_SB.PCI0.LPCB.SIO1._Y21._MIN, IO51)  // _MIN: Minimum Base Address
                    CreateWordField (CRS5, \_SB.PCI0.LPCB.SIO1._Y21._MAX, IO52)  // _MAX: Maximum Base Address
                    CreateByteField (CRS5, \_SB.PCI0.LPCB.SIO1._Y21._LEN, LEN5)  // _LEN: Length
                    CreateWordField (CRS5, \_SB.PCI0.LPCB.SIO1._Y22._MIN, IO61)  // _MIN: Minimum Base Address
                    CreateWordField (CRS5, \_SB.PCI0.LPCB.SIO1._Y22._MAX, IO62)  // _MAX: Maximum Base Address
                    CreateByteField (CRS5, \_SB.PCI0.LPCB.SIO1._Y22._LEN, LEN6)  // _LEN: Length
                    CreateWordField (CRS5, \_SB.PCI0.LPCB.SIO1._Y23._INT, IRQH)  // _INT: Interrupts
                    CreateByteField (CRS5, \_SB.PCI0.LPCB.SIO1._Y24._DMA, DMAH)  // _DMA: Direct Memory Access
                    Name (CRS6, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            _Y25)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            _Y26)
                        IRQNoFlags (_Y27)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y28)
                            {}
                    })
                    CreateWordField (CRS6, \_SB.PCI0.LPCB.SIO1._Y25._MIN, IO81)  // _MIN: Minimum Base Address
                    CreateWordField (CRS6, \_SB.PCI0.LPCB.SIO1._Y25._MAX, IO82)  // _MAX: Maximum Base Address
                    CreateWordField (CRS6, \_SB.PCI0.LPCB.SIO1._Y26._MIN, IO91)  // _MIN: Minimum Base Address
                    CreateWordField (CRS6, \_SB.PCI0.LPCB.SIO1._Y26._MAX, IO92)  // _MAX: Maximum Base Address
                    CreateWordField (CRS6, \_SB.PCI0.LPCB.SIO1._Y27._INT, IRQI)  // _INT: Interrupts
                    CreateByteField (CRS6, \_SB.PCI0.LPCB.SIO1._Y28._DMA, DMAI)  // _DMA: Direct Memory Access
                    Name (CRS7, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            _Y29)
                        IRQNoFlags (_Y2A)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y2B)
                            {}
                    })
                    CreateWordField (CRS7, \_SB.PCI0.LPCB.SIO1._Y29._MIN, IOA1)  // _MIN: Minimum Base Address
                    CreateWordField (CRS7, \_SB.PCI0.LPCB.SIO1._Y29._MAX, IOA2)  // _MAX: Maximum Base Address
                    CreateWordField (CRS7, \_SB.PCI0.LPCB.SIO1._Y2A._INT, IRQJ)  // _INT: Interrupts
                    CreateByteField (CRS7, \_SB.PCI0.LPCB.SIO1._Y2B._DMA, DMAJ)  // _DMA: Direct Memory Access
                    Method (DSRS, 2, NotSerialized)
                    {
                        If ((Arg1 == Zero))
                        {
                            CreateWordField (Arg0, 0x02, IO11)
                            CreateWordField (Arg0, 0x09, IRQM)
                            ENFG ()
                            Local1 = (CR24 << 0x02)
                            RRIO (Arg1, Zero, Local1, 0x08)
                            RRIO (Arg1, One, IO11, 0x08)
                            CR24 = (IO11 >> 0x02)
                            If (IRQM)
                            {
                                FindSetRightBit (IRQM, Local0)
                                Local0 -= One
                                Local0 <<= 0x04
                                CR28 &= 0x0F
                                CR28 |= Local0
                            }
                            Else
                            {
                                CR28 &= 0x0F
                            }

                            EXFG ()
                            DCNT (Arg1, One)
                        }

                        If ((Arg1 == One))
                        {
                            CreateWordField (Arg0, 0x02, IO21)
                            CreateWordField (Arg0, 0x09, IRQE)
                            CreateByteField (Arg0, 0x0C, DMAE)
                            CreateWordField (Arg0, 0x0A, IO81)
                            CreateWordField (Arg0, 0x11, IRQI)
                            CreateByteField (Arg0, 0x14, DMAI)
                            ENFG ()
                            Local1 = (CR25 << 0x02)
                            Local2 = (CR2C & 0x0F)
                            If (Local2)
                            {
                                RRIO (Arg1, Zero, Local1, 0x08)
                                RRIO (Arg1, One, IO81, 0x08)
                                CR25 = (IO81 >> 0x02)
                                If (IRQI)
                                {
                                    FindSetRightBit (IRQI, Local0)
                                    Local0 -= One
                                    CR28 &= 0xF0
                                    CR28 |= Local0
                                }
                                Else
                                {
                                    CR28 &= 0xF0
                                }

                                If (DMAI)
                                {
                                    FindSetRightBit (DMAI, Local1)
                                    Local1 -= One
                                    CR2C &= 0xF0
                                    CR2C |= Local1
                                }
                                Else
                                {
                                    CR2C = Zero
                                }
                            }
                            Else
                            {
                                RRIO (Arg1, Zero, Local1, 0x08)
                                RRIO (Arg1, One, IO21, 0x08)
                                CR25 = (IO21 >> 0x02)
                                If (IRQE)
                                {
                                    FindSetRightBit (IRQE, Local0)
                                    Local0 -= One
                                    CR28 &= 0xF0
                                    CR28 |= Local0
                                }
                                Else
                                {
                                    CR28 &= 0xF0
                                }

                                If (DMAE)
                                {
                                    FindSetRightBit (DMAE, Local1)
                                    Local1 -= One
                                    CR2C &= 0xF0
                                    CR2C |= Local1
                                }
                                Else
                                {
                                    CR2C = Zero
                                }
                            }

                            EXFG ()
                            DCNT (Arg1, One)
                        }

                        If ((Arg1 == 0x10))
                        {
                            CreateWordField (Arg0, 0x02, IOA1)
                            CreateWordField (Arg0, 0x09, IRQJ)
                            CreateByteField (Arg0, 0x0C, DMAJ)
                            ENFG ()
                            Local0 = (IOA1 & 0x03F8)
                            CR1F = (Local0 >> 0x02)
                            Local0 = (IOA1 & 0xFC00)
                            CR20 = (Local0 >> 0x0A)
                            If (IRQJ)
                            {
                                FindSetRightBit (IRQJ, Local0)
                                Local0 -= One
                                Local0 <<= 0x04
                                CR18 &= 0x0F
                                CR18 |= Local0
                            }
                            Else
                            {
                                CR18 &= 0x0F
                            }

                            If (DMAJ)
                            {
                                FindSetRightBit (DMAJ, Local0)
                                Local0 -= One
                                CR18 &= 0xF0
                                CR18 |= Local0
                            }
                            Else
                            {
                                CR18 &= 0xF0
                            }

                            EXFG ()
                            DCNT (Arg1, One)
                        }
                    }
                }

                Method (SIOS, 1, NotSerialized)
                {
                    Debug = "SIOS"
                    ^SIO1.OFS7 = 0x02
                    Local0 = (^SIO1.OFS0 & 0x20)
                    If ((Local0 == Zero))
                    {
                        ^SIO1.OFS7 = 0x50
                        ^SIO1.OFS7 = 0x20
                        ^SIO1.OFS7 = One
                        Local0 = (^SIO1.OFS0 & 0x87)
                        ^SIO1.OFS0 = (Local0 | 0x30)
                        ^SIO1.OFS7 = 0x02
                        ^SIO1.OFS0 = 0x84
                        If (((^SIO1.OFS1 == 0x2B) && (^SIO1.OFS2 == 0x2B)))
                        {
                            ^SIO1.OFS6 = 0x03
                            ^SIO1.OFS7 = 0x06
                            ^SIO1.OFS0 = 0x3C
                            ^SIO1.OFS1 = 0x0F
                            ^SIO1.OFS2 = Zero
                            ^SIO1.OFS3 = 0x04
                            ^SIO1.OFS4 = 0x80
                            ^SIO1.OFS5 = 0x0C
                            ^SIO1.OFS6 = Zero
                            ^SIO1.OFS7 = 0x02
                            ^SIO1.OFS3 = 0x80
                            ^SIO1.OFS4 = 0x0F
                        }
                        Else
                        {
                            ^SIO1.OFS3 = 0x45
                            ^SIO1.OFS4 = 0xBA
                            ^SIO1.OFS5 = 0x12
                            ^SIO1.OFS6 = 0x80
                        }

                        ^SIO1.OFS0 = 0xE4
                        ^SIO1.OFS7 = Zero
                        ^SIO1.OFS5 = 0x80
                    }

                    ^SIO1.PMS2 = 0xFF
                    ^SIO1.PMES = One
                    ^SIO1.PME2 |= 0x02
                    ^SIO1.PMEE |= One
                    ^SIO1.PMS2 = 0xFF
                    ^SIO1.PMES = One
                    ^SIO1.ENFG ()
                    ^SIO1.CR19 = Zero
                    ^SIO1.CR02 &= 0x9F
                    ^SIO1.CR02 |= 0x40
                    ^SIO1.EXFG ()
                }

                Method (SIOW, 1, NotSerialized)
                {
                    Debug = "SIOW"
                    Local0 = (^SIO1.PMS2 & 0x02)
                    ^SIO1.PME2 &= 0xFD
                    ^SIO1.PMEE &= 0xFE
                    ^SIO1.PMS2 = 0xFF
                    ^SIO1.PMES = One
                    ^SIO1.ENFG ()
                    If (Local0)
                    {
                        ^SIO1.CR19 = One
                    }
                    Else
                    {
                        ^SIO1.CR19 = Zero
                    }

                    ^SIO1.EXFG ()
                }

                Method (SIOH, 0, NotSerialized)
                {
                    Debug = "SIOH"
                }

                Device (RMSC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x10)  // _UID: Unique ID
                    Name (CRS1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x00,               // Alignment
                            0x1C,               // Length
                            )
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x00,               // Alignment
                            0x0B,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x00,               // Alignment
                            0x1C,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0068,             // Range Minimum
                            0x0068,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x006C,             // Range Minimum
                            0x006C,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If ((MBEC & 0xFFFF))
                        {
                            Return (CRS1) /* \_SB_.PCI0.LPCB.RMSC.CRS1 */
                        }
                        Else
                        {
                            Return (CRS2) /* \_SB_.PCI0.LPCB.RMSC.CRS2 */
                        }
                    }
                }

                Device (COPR)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP030B"))  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((IOST & 0x0400))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            FixedIO (
                                0x0060,             // Address
                                0x01,               // Length
                                )
                            FixedIO (
                                0x0064,             // Address
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        KBFG = Arg0
                    }
                }

                Scope (\)
                {
                    Name (KBFG, One)
                }

                Method (PS2K._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x1D, 0x03))
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("PNP0F03") /* Microsoft PS/2-style Mouse */)  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((IOST & 0x4000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (CRS1, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {12}
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If ((IOST & 0x0400))
                        {
                            Return (CRS1) /* \_SB_.PCI0.LPCB.PS2M.CRS1 */
                        }
                        Else
                        {
                            Return (CRS2) /* \_SB_.PCI0.LPCB.PS2M.CRS2 */
                        }
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        MSFG = Arg0
                    }
                }

                Scope (\)
                {
                    Name (MSFG, One)
                }

                Method (PS2M._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x1D, 0x03))
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0B, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01 ())
                    }

                    Return (PR01 ())
                }
            }

            Device (USB1)
            {
                Name (_ADR, 0x001D0001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x03, 0x03))
                }
            }

            Device (USB2)
            {
                Name (_ADR, 0x001D0002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x04, 0x03))
                }
            }

            Device (USB3)
            {
                Name (_ADR, 0x001D0003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0C, 0x03))
                }
            }

            Device (USB4)
            {
                Name (_ADR, 0x001D0004)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0E, 0x03))
                }
            }

            Device (USB5)
            {
                Name (_ADR, 0x001A0001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x05, 0x03))
                }
            }

            Device (USB6)
            {
                Name (_ADR, 0x001A0002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x20, 0x03))
                }
            }

            Device (USB7)
            {
                Name (_ADR, 0x001A0003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x25, 0x03))
                }
            }

            Device (RP01)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = One
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = Zero
                            }
                        }

                        Notify (PXSX, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR04 ())
                    }

                    Return (PR04 ())
                }
            }

            Device (RP02)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = One
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = Zero
                            }
                        }

                        Notify (PXSX, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR05 ())
                    }

                    Return (PR05 ())
                }
            }

            Device (RP03)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = One
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = Zero
                            }
                        }

                        Notify (PXSX, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR06 ())
                    }

                    Return (PR06 ())
                }
            }

            Device (RP04)
            {
                Name (_ADR, 0x001C0003)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = One
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = Zero
                            }
                        }

                        Notify (PXSX, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR07 ())
                    }

                    Return (PR07 ())
                }
            }

            Device (RP05)
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = One
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = Zero
                            }
                        }

                        Notify (PXSX, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR08 ())
                    }

                    Return (PR08 ())
                }
            }

            Device (RP06)
            {
                Name (_ADR, 0x001C0005)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = One
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = Zero
                            }
                        }

                        Notify (PXSX, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR09 ())
                    }

                    Return (PR09 ())
                }
            }

            Device (RP07)
            {
                Name (_ADR, 0x001C0006)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = One
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = Zero
                            }
                        }

                        Notify (PXSX, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0E ())
                    }

                    Return (PR0E ())
                }
            }

            Device (RP08)
            {
                Name (_ADR, 0x001C0007)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = One
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = Zero
                            }
                        }

                        Notify (PXSX, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0F ())
                    }

                    Return (PR0F ())
                }
            }

            Device (PEG0)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR02 ())
                    }

                    Return (PR02 ())
                }

                Device (PEGP)
                {
                    Name (_ADR, 0xFFFF)  // _ADR: Address
                }
            }

            Device (PEG1)
            {
                Name (_ADR, 0x00010001)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0A ())
                    }

                    Return (PR0A ())
                }
            }

            Device (PEG2)
            {
                Name (_ADR, 0x00010002)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0B ())
                    }

                    Return (PR0B ())
                }
            }

            Device (PEG3)
            {
                Name (_ADR, 0x00060000)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0C ())
                    }

                    Return (PR0C ())
                }
            }

            Device (B0D4)
            {
                Name (_ADR, 0x00040000)  // _ADR: Address
            }
        }

        Scope (\_GPE)
        {
            Method (_L1D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                \_SB.PCI0.LPCB.SIOH ()
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.P0P1, 0x02) // Device Wake
            }

            Method (_L03, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB1, 0x02) // Device Wake
            }

            Method (_L04, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB2, 0x02) // Device Wake
            }

            Method (_L0C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB3, 0x02) // Device Wake
            }

            Method (_L0E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB4, 0x02) // Device Wake
            }

            Method (_L05, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB5, 0x02) // Device Wake
            }

            Method (_L20, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB6, 0x02) // Device Wake
            }

            Method (_L25, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB7, 0x02) // Device Wake
            }
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
            Name (_UID, 0xAA)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x1D, 0x03))
            }
        }
    }

    Scope (\)
    {
        OperationRegion (IO_T, SystemIO, 0x0200, 0x10)
        Field (IO_T, ByteAcc, NoLock, Preserve)
        {
            TRPI,   16, 
            Offset (0x04), 
            Offset (0x06), 
            Offset (0x08), 
            TRP0,   8, 
            Offset (0x0A), 
            Offset (0x0B), 
            Offset (0x0C), 
            Offset (0x0D), 
            Offset (0x0E), 
            Offset (0x0F), 
            Offset (0x10)
        }

        OperationRegion (IO_D, SystemIO, 0x0810, 0x04)
        Field (IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD,   8
        }

        OperationRegion (IO_H, SystemIO, 0x1000, 0x04)
        Field (IO_H, ByteAcc, NoLock, Preserve)
        {
            TRPH,   8
        }

        OperationRegion (PMIO, SystemIO, PMBS, 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x28), 
            Offset (0x2A), 
                ,   3, 
            GPE3,   1, 
            Offset (0x3C), 
                ,   1, 
            UPRW,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1
        }

        Field (PMIO, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x20), 
            Offset (0x22), 
                ,   3, 
            GPS3,   1, 
            Offset (0x64), 
                ,   9, 
            SCIS,   1, 
            Offset (0x66)
        }

        OperationRegion (GPIO, SystemIO, GPBS, 0x64)
        Field (GPIO, ByteAcc, NoLock, Preserve)
        {
            GU00,   8, 
            GU01,   8, 
            GU02,   8, 
            GU03,   8, 
            GIO0,   8, 
            GIO1,   8, 
            GIO2,   8, 
            GIO3,   8, 
            Offset (0x0C), 
            GL00,   8, 
            GL01,   8, 
            GL02,   8, 
            GP24,   1, 
                ,   2, 
            GP27,   1, 
            GP28,   1, 
            Offset (0x10), 
            Offset (0x18), 
            GB00,   8, 
            GB01,   8, 
            GB02,   8, 
            GB03,   8, 
            Offset (0x2C), 
            GIV0,   8, 
            GIV1,   8, 
            GIV2,   8, 
            GIV3,   8, 
            GU04,   8, 
            GU05,   8, 
            GU06,   8, 
            GU07,   8, 
            GIO4,   8, 
            GIO5,   8, 
            GIO6,   8, 
            GIO7,   8, 
            GL04,   8, 
            GL05,   8, 
            GL06,   8, 
            GL07,   8, 
            Offset (0x40), 
            GU08,   8, 
            GU09,   8, 
            GU0A,   8, 
            GU0B,   8, 
            GIO8,   8, 
            GIO9,   8, 
            GIOA,   8, 
            GIOB,   8, 
            GL08,   8, 
            GL09,   8, 
            GL0A,   8, 
            GL0B,   8
        }

        OperationRegion (RCRB, SystemMemory, SRCB, 0x4000)
        Field (RCRB, DWordAcc, Lock, Preserve)
        {
            Offset (0x1000), 
            Offset (0x3000), 
            Offset (0x3404), 
            HPAS,   2, 
                ,   5, 
            HPAE,   1, 
            Offset (0x3418), 
                ,   1, 
                ,   1, 
            SATD,   1, 
            SMBD,   1, 
            HDAD,   1, 
            Offset (0x341A), 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            RP5D,   1, 
            RP6D,   1, 
            RP7D,   1, 
            RP8D,   1, 
            Offset (0x359C), 
            UP0D,   1, 
            UP1D,   1, 
            UP2D,   1, 
            UP3D,   1, 
            UP4D,   1, 
            UP5D,   1, 
            UP6D,   1, 
            UP7D,   1, 
            UP8D,   1, 
            UP9D,   1, 
            UPAD,   1, 
            UPBD,   1, 
            UPCD,   1, 
            UPDD,   1, 
                ,   1, 
            Offset (0x359E)
        }
    }

    Scope (_SB.PCI0)
    {
        Device (GLAN)
        {
            Name (_ADR, 0x00190000)  // _ADR: Address
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x0D, 0x04))
            }
        }

        Device (EHC1)
        {
            Name (_ADR, 0x001D0000)  // _ADR: Address
            OperationRegion (PWKE, PCI_Config, 0x62, 0x04)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                    ,   1, 
                PWUC,   8
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    PWUC = Ones
                }
                Else
                {
                    PWUC = Zero
                }
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }

            Device (HUBN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCA, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCA) /* \_SB_.PCI0.EHC1.HUBN.PR01._UPC.UPCA */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* 0....... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.EHC1.HUBN.PR01._PLD.PLDP */
                    }

                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR11._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0xE1, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR11._PLD.PLDP */
                        }
                    }

                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR12._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR12._PLD.PLDP */
                        }
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR13._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR13._PLD.PLDP */
                        }
                    }

                    Device (PR14)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR14._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0xE1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR14._PLD.PLDP */
                        }

                        Alias (SBV1, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    If ((Arg1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             /* . */
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             /* . */
                                        })
                                    }
                                }
                                Else
                                {
                                    If ((_T_0 == One))
                                    {
                                        If ((SDGV == 0xFF))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (One)
                                        }
                                    }
                                    Else
                                    {
                                        If ((_T_0 == 0x02))
                                        {
                                            Return (SDGV) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR14.SDGV */
                                        }
                                    }
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR15)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR15._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR15._PLD.PLDP */
                        }

                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    If ((Arg1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             /* . */
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             /* . */
                                        })
                                    }
                                }
                                Else
                                {
                                    If ((_T_0 == One))
                                    {
                                        If ((SDGV == 0xFF))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (One)
                                        }
                                    }
                                    Else
                                    {
                                        If ((_T_0 == 0x02))
                                        {
                                            Return (SDGV) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR15.SDGV */
                                        }
                                    }
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR16)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR16._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR16._PLD.PLDP */
                        }

                        Alias (SBV1, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    If ((Arg1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             /* . */
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             /* . */
                                        })
                                    }
                                }
                                Else
                                {
                                    If ((_T_0 == One))
                                    {
                                        If ((SDGV == 0xFF))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (One)
                                        }
                                    }
                                    Else
                                    {
                                        If ((_T_0 == 0x02))
                                        {
                                            Return (SDGV) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR16.SDGV */
                                        }
                                    }
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR17)
                    {
                        Name (_ADR, 0x07)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR17._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR17._PLD.PLDP */
                        }

                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    If ((Arg1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             /* . */
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             /* . */
                                        })
                                    }
                                }
                                Else
                                {
                                    If ((_T_0 == One))
                                    {
                                        If ((SDGV == 0xFF))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (One)
                                        }
                                    }
                                    Else
                                    {
                                        If ((_T_0 == 0x02))
                                        {
                                            Return (SDGV) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR17.SDGV */
                                        }
                                    }
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR18)
                    {
                        Name (_ADR, 0x08)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR18._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR18._PLD.PLDP */
                        }
                    }
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x0D, 0x03))
            }
        }

        Device (EHC2)
        {
            Name (_ADR, 0x001A0000)  // _ADR: Address
            OperationRegion (PWKE, PCI_Config, 0x62, 0x04)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                    ,   1, 
                PWUC,   6
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    PWUC = Ones
                }
                Else
                {
                    PWUC = Zero
                }
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }

            Device (HUBN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCA, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCA) /* \_SB_.PCI0.EHC2.HUBN.PR01._UPC.UPCA */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* 0....... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.EHC2.HUBN.PR01._PLD.PLDP */
                    }

                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR11._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0xE1, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR11._PLD.PLDP */
                        }
                    }

                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR12._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR12._PLD.PLDP */
                        }

                        Alias (SBV1, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    If ((Arg1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             /* . */
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             /* . */
                                        })
                                    }
                                }
                                Else
                                {
                                    If ((_T_0 == One))
                                    {
                                        If ((SDGV == 0xFF))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (One)
                                        }
                                    }
                                    Else
                                    {
                                        If ((_T_0 == 0x02))
                                        {
                                            Return (SDGV) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR12.SDGV */
                                        }
                                    }
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR13._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR13._PLD.PLDP */
                        }

                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                                _T_0 = ToInteger (Arg2)
                                If ((_T_0 == Zero))
                                {
                                    If ((Arg1 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x07                                             /* . */
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             /* . */
                                        })
                                    }
                                }
                                Else
                                {
                                    If ((_T_0 == One))
                                    {
                                        If ((SDGV == 0xFF))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (One)
                                        }
                                    }
                                    Else
                                    {
                                        If ((_T_0 == 0x02))
                                        {
                                            Return (SDGV) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR13.SDGV */
                                        }
                                    }
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR14)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR14._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0xE1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR14._PLD.PLDP */
                        }
                    }

                    Device (PR15)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR15._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR15._PLD.PLDP */
                        }
                    }

                    Device (PR16)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR16._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR16._PLD.PLDP */
                        }
                    }
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x0D, 0x03))
            }
        }

        Device (XHC)
        {
            Name (_ADR, 0x00140000)  // _ADR: Address
            OperationRegion (XPRT, PCI_Config, 0xD0, 0x10)
            Field (XPRT, DWordAcc, NoLock, Preserve)
            {
                PR2,    32, 
                PR2M,   32, 
                PR3,    32, 
                PR3M,   32
            }

            Method (CUID, 1, Serialized)
            {
                If ((Arg0 == ToUUID ("7c9512a9-1705-4cb4-af7d-506a2423ab71")))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (POSC, 3, Serialized)
            {
                CreateDWordField (Arg2, Zero, CDW1)
                If ((Arg1 != One))
                {
                    CDW1 |= 0x08
                }

                If ((XHCI == Zero))
                {
                    CDW1 |= 0x02
                }

                If (!(CDW1 & One))
                {
                    XSEL ()
                }

                Return (Arg2)
            }

            Method (XSEL, 0, Serialized)
            {
                If (((XHCI == 0x02) || (XHCI == 0x03)))
                {
                    Local0 = Zero
                    Local0 = (PR3 & 0xFFFFFFF0)
                    Local0 |= XHPM /* \XHPM */
                    PR3 = (Local0 & PR3M) /* \_SB_.PCI0.XHC_.PR3M */
                    Local0 = Zero
                    Local0 = (PR2 & 0xFFFFFFF0)
                    Local0 |= XHPM /* \XHPM */
                    PR2 = (Local0 & PR2M) /* \_SB_.PCI0.XHC_.PR2M */
                    XUSB = One
                }
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }

            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (HSP1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2 & One))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.HSP1._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ..r..... */
                                /* 0008 */  0x69, 0x0C, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00   /* i....... */
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (!(PR2 & One))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HSP1._PLD.PLDP */
                    }
                }

                Device (HSP2)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2 & 0x02))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.HSP2._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ..r..... */
                                /* 0008 */  0x69, 0x0C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00   /* i....... */
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (!(PR2 & 0x02))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HSP2._PLD.PLDP */
                    }
                }

                Device (HSP3)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2 & 0x04))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.HSP3._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ..r..... */
                                /* 0008 */  0x69, 0x0C, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00   /* i....... */
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (!(PR2 & 0x04))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HSP3._PLD.PLDP */
                    }
                }

                Device (HSP4)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2 & 0x08))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.HSP4._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ..r..... */
                                /* 0008 */  0x69, 0x0C, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00   /* i....... */
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (!(PR2 & 0x08))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HSP4._PLD.PLDP */
                    }
                }

                Device (SSP1)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR3 & One))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.SSP1._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ..r..... */
                                /* 0008 */  0x69, 0x0C, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00   /* i....... */
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (!(PR3 & One))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.SSP1._PLD.PLDP */
                    }
                }

                Device (SSP2)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR3 & 0x02))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.SSP2._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ..r..... */
                                /* 0008 */  0x69, 0x0C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00   /* i....... */
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (!(PR3 & 0x02))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.SSP2._PLD.PLDP */
                    }
                }

                Device (SSP3)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR3 & 0x04))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.SSP3._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ..r..... */
                                /* 0008 */  0x69, 0x0C, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00   /* i....... */
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (!(PR3 & 0x04))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.SSP3._PLD.PLDP */
                    }
                }

                Device (SSP4)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR3 & 0x08))
                        {
                            Index (UPCP, Zero) = Zero
                        }

                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.SSP4._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ..r..... */
                                /* 0008 */  0x69, 0x0C, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00   /* i....... */
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (!(PR3 & 0x08))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.SSP4._PLD.PLDP */
                    }
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x0D, 0x03))
            }
        }

        Device (HDEF)
        {
            Name (_ADR, 0x001B0000)  // _ADR: Address
            OperationRegion (HDAR, PCI_Config, 0x4C, 0x10)
            Field (HDAR, WordAcc, NoLock, Preserve)
            {
                DCKA,   1, 
                Offset (0x01), 
                DCKM,   1, 
                    ,   6, 
                DCKS,   1, 
                Offset (0x08), 
                    ,   15, 
                PMES,   1
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x0D, 0x04))
            }
        }

        Device (SAT0)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
        }

        Device (SAT1)
        {
            Name (_ADR, 0x001F0005)  // _ADR: Address
        }

        Device (SBUS)
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address
            OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
            Field (SMBP, DWordAcc, NoLock, Preserve)
            {
                    ,   2, 
                I2CE,   1
            }

            OperationRegion (SMPB, PCI_Config, 0x20, 0x04)
            Field (SMPB, DWordAcc, NoLock, Preserve)
            {
                    ,   5, 
                SBAR,   11
            }

            OperationRegion (SMBI, SystemIO, (SBAR << 0x05), 0x10)
            Field (SMBI, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8, 
                Offset (0x02), 
                HCON,   8, 
                HCOM,   8, 
                TXSA,   8, 
                DAT0,   8, 
                DAT1,   8, 
                HBDR,   8, 
                PECR,   8, 
                RXSA,   8, 
                SDAT,   16
            }

            Method (SSXB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRXB, 1, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCON = 0x44
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                }

                Return (0xFFFF)
            }

            Method (SWRB, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT0 = Arg2
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                }

                Return (0xFFFF)
            }

            Method (SWRW, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT1 = (Arg2 & 0xFF)
                DAT0 = ((Arg2 >> 0x08) & 0xFF)
                HCON = 0x4C
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDW, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x4C
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (((DAT0 << 0x08) | DAT1))
                }

                Return (0xFFFFFFFF)
            }

            Method (SBLW, 4, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Arg3
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT0 = SizeOf (Arg2)
                Local1 = Zero
                HBDR = DerefOf (Index (Arg2, Zero))
                HCON = 0x54
                While ((SizeOf (Arg2) > Local1))
                {
                    Local0 = 0x0FA0
                    While ((!(HSTS & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    HSTS = 0x80
                    Local1++
                    If ((SizeOf (Arg2) > Local1))
                    {
                        HBDR = DerefOf (Index (Arg2, Local1))
                    }
                }

                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SBLR, 3, Serialized)
            {
                Name (TBUF, Buffer (0x0100) {})
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Arg2
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x54
                Local0 = 0x0FA0
                While ((!(HSTS & 0x80) && Local0))
                {
                    Local0--
                    Stall (0x32)
                }

                If (!Local0)
                {
                    KILL ()
                    Return (Zero)
                }

                Index (TBUF, Zero) = DAT0 /* \_SB_.PCI0.SBUS.DAT0 */
                HSTS = 0x80
                Local1 = One
                While ((Local1 < DerefOf (Index (TBUF, Zero))))
                {
                    Local0 = 0x0FA0
                    While ((!(HSTS & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Index (TBUF, Local1) = HBDR /* \_SB_.PCI0.SBUS.HBDR */
                    HSTS = 0x80
                    Local1++
                }

                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (TBUF) /* \_SB_.PCI0.SBUS.SBLR.TBUF */
                }

                Return (Zero)
            }

            Method (STRT, 0, Serialized)
            {
                Local0 = 0xC8
                While (Local0)
                {
                    If ((HSTS & 0x40))
                    {
                        Local0--
                        Sleep (One)
                        If ((Local0 == Zero))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Local0 = Zero
                    }
                }

                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((HSTS & One))
                    {
                        Local0--
                        Stall (0x32)
                        If ((Local0 == Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (COMP, 0, Serialized)
            {
                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((HSTS & 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Local0--
                        Stall (0x32)
                        If ((Local0 == Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (KILL, 0, Serialized)
            {
                HCON |= 0x02
                HSTS |= 0xFF
            }
        }
    }

    Scope (_SB.PCI0.LPCB)
    {
        OperationRegion (CPSB, SystemMemory, 0xCA46EF98, 0x10)
        Field (CPSB, AnyAcc, NoLock, Preserve)
        {
            RTCX,   1, 
            SBB0,   7, 
            SBB1,   8, 
            SBB2,   8, 
            SBB3,   8, 
            SBB4,   8, 
            SBB5,   8, 
            SBB6,   8, 
            SBB7,   8, 
            SBB8,   8, 
            SBB9,   8, 
            SBBA,   8, 
            SBBB,   8, 
            SBBC,   8, 
            SBBD,   8, 
            SBBE,   8, 
            SBBF,   8
        }

        Method (SPTS, 1, NotSerialized)
        {
            SLPX = One
            SLPE = One
        }

        Method (SWAK, 1, NotSerialized)
        {
            SLPE = Zero
            If (RTCX) {}
            Else
            {
                Notify (PWRB, 0x02) // Device Wake
            }
        }

        OperationRegion (SMIE, SystemIO, PMBS, 0x04)
        Field (SMIE, ByteAcc, NoLock, Preserve)
        {
                ,   10, 
            RTCS,   1, 
                ,   3, 
            PEXS,   1, 
            WAKS,   1, 
            Offset (0x03), 
            PWBT,   1, 
            Offset (0x04)
        }

        OperationRegion (SLPR, SystemIO, SMCR, 0x08)
        Field (SLPR, ByteAcc, NoLock, Preserve)
        {
                ,   4, 
            SLPE,   1, 
                ,   31, 
            SLPX,   1, 
            Offset (0x08)
        }
    }

    Scope (_SB.PCI0.RP01)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP02)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP03)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP04)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP05)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP06)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP07)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.RP08)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    OperationRegion (_SB.PCI0.LPCB.LPCR, PCI_Config, 0x80, 0x04)
    Field (\_SB.PCI0.LPCB.LPCR, ByteAcc, NoLock, Preserve)
    {
        CADR,   3, 
            ,   1, 
        CBDR,   3, 
        Offset (0x01), 
        LTDR,   2, 
            ,   2, 
        FDDR,   1, 
        Offset (0x02), 
        CALE,   1, 
        CBLE,   1, 
        LTLE,   1, 
        FDLE,   1, 
        Offset (0x03), 
        GLLE,   1, 
        GHLE,   1, 
        KCLE,   1, 
        MCLE,   1, 
        C1LE,   1, 
        C2LE,   1, 
        Offset (0x04)
    }

    Method (UXDV, 1, NotSerialized)
    {
        Local0 = 0xFF
        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
        _T_0 = (Arg0 + Zero)
        If ((_T_0 == 0x03F8))
        {
            Local0 = Zero
        }
        Else
        {
            If ((_T_0 == 0x02F8))
            {
                Local0 = One
            }
            Else
            {
                If ((_T_0 == 0x0220))
                {
                    Local0 = 0x02
                }
                Else
                {
                    If ((_T_0 == 0x0228))
                    {
                        Local0 = 0x03
                    }
                    Else
                    {
                        If ((_T_0 == 0x0238))
                        {
                            Local0 = 0x04
                        }
                        Else
                        {
                            If ((_T_0 == 0x02E8))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                If ((_T_0 == 0x0338))
                                {
                                    Local0 = 0x06
                                }
                                Else
                                {
                                    If ((_T_0 == 0x03E8))
                                    {
                                        Local0 = 0x07
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        Return (Local0)
    }

    Method (RRIO, 4, NotSerialized)
    {
        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
        _T_0 = (Arg0 + Zero)
        If ((_T_0 == Zero))
        {
            CALE = Zero
            Local0 = UXDV (Arg2)
            If ((Local0 != 0xFF))
            {
                CADR = Local0
            }

            If (Arg1)
            {
                CALE = One
            }
        }
        Else
        {
            If ((_T_0 == One))
            {
                CBLE = Zero
                Local0 = UXDV (Arg2)
                If ((Local0 != 0xFF))
                {
                    CBDR = Local0
                }

                If (Arg1)
                {
                    CBLE = One
                }
            }
            Else
            {
                If ((_T_0 == 0x02))
                {
                    LTLE = Zero
                    If ((Arg2 == 0x0378))
                    {
                        LTDR = Zero
                    }

                    If ((Arg2 == 0x0278))
                    {
                        LTDR = One
                    }

                    If ((Arg2 == 0x03BC))
                    {
                        LTDR = 0x02
                    }

                    If (Arg1)
                    {
                        LTLE = One
                    }
                }
                Else
                {
                    If ((_T_0 == 0x03))
                    {
                        FDLE = Zero
                        If ((Arg2 == 0x03F0))
                        {
                            FDDR = Zero
                        }

                        If ((Arg2 == 0x0370))
                        {
                            FDDR = One
                        }

                        If (Arg1)
                        {
                            FDLE = One
                        }
                    }
                    Else
                    {
                        If ((_T_0 == 0x08))
                        {
                            If ((Arg2 == 0x0200))
                            {
                                If (Arg1)
                                {
                                    GLLE = One
                                }
                                Else
                                {
                                    GLLE = Zero
                                }
                            }

                            If ((Arg2 == 0x0208))
                            {
                                If (Arg1)
                                {
                                    GHLE = One
                                }
                                Else
                                {
                                    GHLE = Zero
                                }
                            }
                        }
                        Else
                        {
                            If ((_T_0 == 0x09))
                            {
                                If ((Arg2 == 0x0200))
                                {
                                    If (Arg1)
                                    {
                                        GLLE = One
                                    }
                                    Else
                                    {
                                        GLLE = Zero
                                    }
                                }

                                If ((Arg2 == 0x0208))
                                {
                                    If (Arg1)
                                    {
                                        GHLE = One
                                    }
                                    Else
                                    {
                                        GHLE = Zero
                                    }
                                }
                            }
                            Else
                            {
                                If ((_T_0 == 0x0A))
                                {
                                    If (((Arg2 == 0x60) || (Arg2 == 0x64)))
                                    {
                                        If (Arg1)
                                        {
                                            KCLE = One
                                        }
                                        Else
                                        {
                                            KCLE = Zero
                                        }
                                    }
                                }
                                Else
                                {
                                    If ((_T_0 == 0x0B))
                                    {
                                        If (((Arg2 == 0x62) || (Arg2 == 0x66)))
                                        {
                                            If (Arg1)
                                            {
                                                MCLE = One
                                            }
                                            Else
                                            {
                                                MCLE = Zero
                                            }
                                        }
                                    }
                                    Else
                                    {
                                        If ((_T_0 == 0x0C))
                                        {
                                            If ((Arg2 == 0x2E))
                                            {
                                                If (Arg1)
                                                {
                                                    C1LE = One
                                                }
                                                Else
                                                {
                                                    C1LE = Zero
                                                }
                                            }

                                            If ((Arg2 == 0x4E))
                                            {
                                                If (Arg1)
                                                {
                                                    C2LE = One
                                                }
                                                Else
                                                {
                                                    C2LE = Zero
                                                }
                                            }
                                        }
                                        Else
                                        {
                                            If ((_T_0 == 0x0D))
                                            {
                                                If ((Arg2 == 0x2E))
                                                {
                                                    If (Arg1)
                                                    {
                                                        C1LE = One
                                                    }
                                                    Else
                                                    {
                                                        C1LE = Zero
                                                    }
                                                }

                                                If ((Arg2 == 0x4E))
                                                {
                                                    If (Arg1)
                                                    {
                                                        C2LE = One
                                                    }
                                                    Else
                                                    {
                                                        C2LE = Zero
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    Method (RDMA, 3, NotSerialized)
    {
    }

    Scope (_SB.PCI0)
    {
        Method (NPTS, 1, NotSerialized)
        {
        }

        Method (NWAK, 1, NotSerialized)
        {
        }
    }

    Scope (_SB.PCI0.PEG0)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.PEG0.PEGP)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.PEG1)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.PEG2)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0.PEG3)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (_SB.PCI0)
    {
        Device (GFX0)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Method (PCPC, 0, NotSerialized)
            {
                If (ECON)
                {
                    ^^LPCB.H_EC.SLPC = 0x02
                }

                ECST (0x6F)
            }

            Method (PAPR, 0, NotSerialized)
            {
                If (ECON)
                {
                    Return ((^^LPCB.H_EC.MCAP / 0x64))
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
            {
                DSEN = (Arg0 & 0x07)
                If (((Arg0 & 0x03) == Zero))
                {
                    If (CondRefOf (HDOS))
                    {
                        HDOS ()
                    }
                }
            }

            Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
            {
                If (CondRefOf (IDAB))
                {
                    IDAB ()
                }
                Else
                {
                    NDID = Zero
                    If ((DIDL != Zero))
                    {
                        DID1 = SDDL (DIDL)
                    }

                    If ((DDL2 != Zero))
                    {
                        DID2 = SDDL (DDL2)
                    }

                    If ((DDL3 != Zero))
                    {
                        DID3 = SDDL (DDL3)
                    }

                    If ((DDL4 != Zero))
                    {
                        DID4 = SDDL (DDL4)
                    }

                    If ((DDL5 != Zero))
                    {
                        DID5 = SDDL (DDL5)
                    }

                    If ((DDL6 != Zero))
                    {
                        DID6 = SDDL (DDL6)
                    }

                    If ((DDL7 != Zero))
                    {
                        DID7 = SDDL (DDL7)
                    }

                    If ((DDL8 != Zero))
                    {
                        DID8 = SDDL (DDL8)
                    }
                }

                If ((NDID == One))
                {
                    Name (TMP1, Package (0x01)
                    {
                        0xFFFFFFFF
                    })
                    Index (TMP1, Zero) = (0x00010000 | DID1)
                    Return (TMP1) /* \_SB_.PCI0.GFX0._DOD.TMP1 */
                }

                If ((NDID == 0x02))
                {
                    Name (TMP2, Package (0x02)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Index (TMP2, Zero) = (0x00010000 | DID1)
                    Index (TMP2, One) = (0x00010000 | DID2)
                    Return (TMP2) /* \_SB_.PCI0.GFX0._DOD.TMP2 */
                }

                If ((NDID == 0x03))
                {
                    Name (TMP3, Package (0x03)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Index (TMP3, Zero) = (0x00010000 | DID1)
                    Index (TMP3, One) = (0x00010000 | DID2)
                    Index (TMP3, 0x02) = (0x00010000 | DID3)
                    Return (TMP3) /* \_SB_.PCI0.GFX0._DOD.TMP3 */
                }

                If ((NDID == 0x04))
                {
                    Name (TMP4, Package (0x04)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Index (TMP4, Zero) = (0x00010000 | DID1)
                    Index (TMP4, One) = (0x00010000 | DID2)
                    Index (TMP4, 0x02) = (0x00010000 | DID3)
                    Index (TMP4, 0x03) = (0x00010000 | DID4)
                    Return (TMP4) /* \_SB_.PCI0.GFX0._DOD.TMP4 */
                }

                If ((NDID == 0x05))
                {
                    Name (TMP5, Package (0x05)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Index (TMP5, Zero) = (0x00010000 | DID1)
                    Index (TMP5, One) = (0x00010000 | DID2)
                    Index (TMP5, 0x02) = (0x00010000 | DID3)
                    Index (TMP5, 0x03) = (0x00010000 | DID4)
                    Index (TMP5, 0x04) = (0x00010000 | DID5)
                    Return (TMP5) /* \_SB_.PCI0.GFX0._DOD.TMP5 */
                }

                If ((NDID == 0x06))
                {
                    Name (TMP6, Package (0x06)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Index (TMP6, Zero) = (0x00010000 | DID1)
                    Index (TMP6, One) = (0x00010000 | DID2)
                    Index (TMP6, 0x02) = (0x00010000 | DID3)
                    Index (TMP6, 0x03) = (0x00010000 | DID4)
                    Index (TMP6, 0x04) = (0x00010000 | DID5)
                    Index (TMP6, 0x05) = (0x00010000 | DID6)
                    Return (TMP6) /* \_SB_.PCI0.GFX0._DOD.TMP6 */
                }

                If ((NDID == 0x07))
                {
                    Name (TMP7, Package (0x07)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Index (TMP7, Zero) = (0x00010000 | DID1)
                    Index (TMP7, One) = (0x00010000 | DID2)
                    Index (TMP7, 0x02) = (0x00010000 | DID3)
                    Index (TMP7, 0x03) = (0x00010000 | DID4)
                    Index (TMP7, 0x04) = (0x00010000 | DID5)
                    Index (TMP7, 0x05) = (0x00010000 | DID6)
                    Index (TMP7, 0x06) = (0x00010000 | DID7)
                    Return (TMP7) /* \_SB_.PCI0.GFX0._DOD.TMP7 */
                }

                If ((NDID == 0x08))
                {
                    Name (TMP8, Package (0x08)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Index (TMP8, Zero) = (0x00010000 | DID1)
                    Index (TMP8, One) = (0x00010000 | DID2)
                    Index (TMP8, 0x02) = (0x00010000 | DID3)
                    Index (TMP8, 0x03) = (0x00010000 | DID4)
                    Index (TMP8, 0x04) = (0x00010000 | DID5)
                    Index (TMP8, 0x05) = (0x00010000 | DID6)
                    Index (TMP8, 0x06) = (0x00010000 | DID7)
                    Index (TMP8, 0x07) = (0x00010000 | DID8)
                    Return (TMP8) /* \_SB_.PCI0.GFX0._DOD.TMP8 */
                }

                If ((NDID == 0x09))
                {
                    If (CondRefOf (HWID))
                    {
                        Return (HWID) /* External reference */
                    }
                }

                Return (Package (0x01)
                {
                    0x0400
                })
            }

            Device (DD01)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((DID1 == Zero))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID1))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID1))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD1) /* \NXD1 */
                    }

                    Return (NDDS (DID1))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD02)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((DID2 == Zero))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID2))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((LIDS == Zero))
                    {
                        Return (Zero)
                    }

                    Return (CDDS (DID2))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD2) /* \NXD2 */
                    }

                    Return (NDDS (DID2))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Return (Package (0x0B)
                    {
                        0x64, 
                        0x3C, 
                        0x14, 
                        0x1E, 
                        0x28, 
                        0x32, 
                        0x3C, 
                        0x46, 
                        0x50, 
                        0x5A, 
                        0x64
                    })
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    If (((Arg0 >= 0x14) && (Arg0 <= 0x64)))
                    {
                        Local0 = ((Arg0 / 0x0A) - 0x02)
                        ^^^LPCB.EC.BRLV = Local0
                    }
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Local0 = ^^^LPCB.EC.BRLV /* \_SB_.PCI0.LPCB.EC__.BRLV */
                    Local0 = ((Local0 + 0x02) * 0x0A)
                    Return (Local0)
                }
            }

            Device (DD03)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((DID3 == Zero))
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID3))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID3 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID3))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD3) /* \NXD3 */
                    }

                    Return (NDDS (DID3))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD04)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((DID4 == Zero))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID4))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID4 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID4))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD4) /* \NXD4 */
                    }

                    Return (NDDS (DID4))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD05)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((DID5 == Zero))
                    {
                        Return (0x05)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID5))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID5 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID5))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD5) /* \NXD5 */
                    }

                    Return (NDDS (DID5))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD06)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((DID6 == Zero))
                    {
                        Return (0x06)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID6))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID6 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID6))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD6) /* \NXD6 */
                    }

                    Return (NDDS (DID6))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD07)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((DID7 == Zero))
                    {
                        Return (0x07)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID7))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID7 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID7))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD7) /* \NXD7 */
                    }

                    Return (NDDS (DID7))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD08)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((DID8 == Zero))
                    {
                        Return (0x08)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID8))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID8 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID8))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If ((((SGMD & 0x7F) == One) && CondRefOf (SNXD)))
                    {
                        Return (NXD8) /* \NXD8 */
                    }

                    Return (NDDS (DID8))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Method (SDDL, 1, NotSerialized)
            {
                NDID++
                Local0 = (Arg0 & 0x0F0F)
                Local1 = (0x80000000 | Local0)
                If ((DIDL == Local0))
                {
                    Return (Local1)
                }

                If ((DDL2 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL3 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL4 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL5 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL6 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL7 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL8 == Local0))
                {
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (CDDS, 1, NotSerialized)
            {
                Local0 = (Arg0 & 0x0F0F)
                If ((Zero == Local0))
                {
                    Return (0x1D)
                }

                If ((CADL == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL2 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL3 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL4 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL5 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL6 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL7 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL8 == Local0))
                {
                    Return (0x1F)
                }

                Return (0x1D)
            }

            Method (NDDS, 1, NotSerialized)
            {
                Local0 = (Arg0 & 0x0F0F)
                If ((Zero == Local0))
                {
                    Return (Zero)
                }

                If ((NADL == Local0))
                {
                    Return (One)
                }

                If ((NDL2 == Local0))
                {
                    Return (One)
                }

                If ((NDL3 == Local0))
                {
                    Return (One)
                }

                If ((NDL4 == Local0))
                {
                    Return (One)
                }

                If ((NDL5 == Local0))
                {
                    Return (One)
                }

                If ((NDL6 == Local0))
                {
                    Return (One)
                }

                If ((NDL7 == Local0))
                {
                    Return (One)
                }

                If ((NDL8 == Local0))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Scope (^^PCI0)
            {
                OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
                Field (MCHP, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    TASM,   10, 
                    Offset (0x62)
                }
            }

            OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
            Field (IGDP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x12), 
                    ,   1, 
                GIVD,   1, 
                    ,   2, 
                GUMA,   3, 
                Offset (0x14), 
                    ,   4, 
                GMFN,   1, 
                Offset (0x18), 
                Offset (0xA4), 
                ASLE,   8, 
                Offset (0xA8), 
                GSSE,   1, 
                GSSB,   14, 
                GSES,   1, 
                Offset (0xB0), 
                    ,   12, 
                CDVL,   1, 
                Offset (0xB2), 
                Offset (0xB5), 
                LBPC,   8, 
                Offset (0xBC), 
                ASLS,   32
            }

            OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
            Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                SIGN,   128, 
                SIZE,   32, 
                OVER,   32, 
                SVER,   256, 
                VVER,   128, 
                GVER,   128, 
                MBOX,   32, 
                DMOD,   32, 
                Offset (0x100), 
                DRDY,   32, 
                CSTS,   32, 
                CEVT,   32, 
                Offset (0x120), 
                DIDL,   32, 
                DDL2,   32, 
                DDL3,   32, 
                DDL4,   32, 
                DDL5,   32, 
                DDL6,   32, 
                DDL7,   32, 
                DDL8,   32, 
                CPDL,   32, 
                CPL2,   32, 
                CPL3,   32, 
                CPL4,   32, 
                CPL5,   32, 
                CPL6,   32, 
                CPL7,   32, 
                CPL8,   32, 
                CADL,   32, 
                CAL2,   32, 
                CAL3,   32, 
                CAL4,   32, 
                CAL5,   32, 
                CAL6,   32, 
                CAL7,   32, 
                CAL8,   32, 
                NADL,   32, 
                NDL2,   32, 
                NDL3,   32, 
                NDL4,   32, 
                NDL5,   32, 
                NDL6,   32, 
                NDL7,   32, 
                NDL8,   32, 
                ASLP,   32, 
                TIDX,   32, 
                CHPD,   32, 
                CLID,   32, 
                CDCK,   32, 
                SXSW,   32, 
                EVTS,   32, 
                CNOT,   32, 
                NRDY,   32, 
                Offset (0x200), 
                SCIE,   1, 
                GEFC,   4, 
                GXFC,   3, 
                GESF,   8, 
                Offset (0x204), 
                PARM,   32, 
                DSLP,   32, 
                Offset (0x300), 
                ARDY,   32, 
                ASLC,   32, 
                TCHE,   32, 
                ALSI,   32, 
                BCLP,   32, 
                PFIT,   32, 
                CBLV,   32, 
                BCLM,   320, 
                CPFM,   32, 
                EPFM,   32, 
                PLUT,   592, 
                PFMB,   32, 
                CCDV,   32, 
                PCFT,   32, 
                Offset (0x400), 
                GVD1,   49152, 
                PHED,   32, 
                BDDC,   2048
            }

            Name (DBTB, Package (0x15)
            {
                Zero, 
                0x07, 
                0x38, 
                0x01C0, 
                0x0E00, 
                0x3F, 
                0x01C7, 
                0x0E07, 
                0x01F8, 
                0x0E38, 
                0x0FC0, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x7000, 
                0x7007, 
                0x7038, 
                0x71C0, 
                0x7E00
            })
            Name (CDCT, Package (0x05)
            {
                Package (0x02)
                {
                    0xE4, 
                    0x0140
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 

                Package (0x02)
                {
                    Zero, 
                    Zero
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }
            })
            Name (SUCC, One)
            Name (NVLD, 0x02)
            Name (CRIT, 0x04)
            Name (NCRT, 0x06)
            Method (GSCI, 0, Serialized)
            {
                Method (GBDA, 0, Serialized)
                {
                    If ((GESF == Zero))
                    {
                        PARM = 0x0679
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == One))
                    {
                        PARM = 0x0240
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x04))
                    {
                        PARM &= 0xEFFF0000
                        PARM &= (DerefOf (Index (DBTB, IBTT)) << 0x10)
                        PARM |= IBTT /* \_SB_.PCI0.GFX0.PARM */
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x05))
                    {
                        PARM = IPSC /* \IPSC */
                        PARM |= (IPAT << 0x08)
                        PARM += 0x0100
                        PARM |= (LIDS << 0x10)
                        PARM += 0x00010000
                        PARM |= (IBIA << 0x14)
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x06))
                    {
                        PARM = ITVF /* \ITVF */
                        PARM |= (ITVM << 0x04)
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x07))
                    {
                        PARM = GIVD /* \_SB_.PCI0.GFX0.GIVD */
                        PARM ^= One
                        PARM |= (GMFN << One)
                        PARM |= 0x1800
                        PARM |= (IDMS << 0x11)
                        PARM |= (DerefOf (Index (DerefOf (Index (CDCT, HVCO)), CDVL)) << 
                            0x15) /* \_SB_.PCI0.GFX0.PARM */
                        GESF = One
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x0A))
                    {
                        PARM = Zero
                        If (ISSC)
                        {
                            PARM |= 0x03
                        }

                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x0B))
                    {
                        PARM = KSV0 /* \KSV0 */
                        GESF = KSV1 /* \KSV1 */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    GESF = Zero
                    Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                }

                Method (SBCB, 0, Serialized)
                {
                    If ((GESF == Zero))
                    {
                        PARM = Zero
                        PARM = 0x000F87FD
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == One))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x03))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x04))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x05))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x06))
                    {
                        ITVF = (PARM & 0x0F)
                        ITVM = ((PARM & 0xF0) >> 0x04)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x07))
                    {
                        If ((PARM == Zero))
                        {
                            Local0 = CLID /* \_SB_.PCI0.GFX0.CLID */
                            If ((0x80000000 & Local0))
                            {
                                CLID &= 0x0F
                                GLID (CLID)
                            }
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x08))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x09))
                    {
                        IBTT = (PARM & 0xFF)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x0A))
                    {
                        IPSC = (PARM & 0xFF)
                        If (((PARM >> 0x08) & 0xFF))
                        {
                            IPAT = ((PARM >> 0x08) & 0xFF)
                            IPAT--
                        }

                        IBIA = ((PARM >> 0x14) & 0x07)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x0B))
                    {
                        IF1E = ((PARM >> One) & One)
                        If ((PARM & 0x0001E000))
                        {
                            IDMS = ((PARM >> 0x0D) & 0x0F)
                        }
                        Else
                        {
                            IDMS = ((PARM >> 0x11) & 0x0F)
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x10))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x11))
                    {
                        PARM = (LIDS << 0x08)
                        PARM += 0x0100
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x12))
                    {
                        If ((PARM & One))
                        {
                            If (((PARM >> One) == One))
                            {
                                ISSC = One
                            }
                            Else
                            {
                                GESF = Zero
                                Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                            }
                        }
                        Else
                        {
                            ISSC = Zero
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x13))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x14))
                    {
                        PAVP = (PARM & 0x0F)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    GESF = Zero
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If ((GEFC == 0x04))
                {
                    GXFC = GBDA ()
                }

                If ((GEFC == 0x06))
                {
                    GXFC = SBCB ()
                }

                GEFC = Zero
                SCIS = One
                GSSE = Zero
                SCIE = Zero
                Return (Zero)
            }

            Method (PDRD, 0, NotSerialized)
            {
                If (!DRDY)
                {
                    Sleep (ASLP)
                }

                Return (!DRDY)
            }

            Method (PSTS, 0, NotSerialized)
            {
                If ((CSTS > 0x02))
                {
                    Sleep (ASLP)
                }

                Return ((CSTS == 0x03))
            }

            Method (GNOT, 2, NotSerialized)
            {
                If (PDRD ())
                {
                    Return (One)
                }

                CEVT = Arg0
                CSTS = 0x03
                If (((CHPD == Zero) && (Arg1 == Zero)))
                {
                    If (((OSYS > 0x07D0) || (OSYS < 0x07D6)))
                    {
                        Notify (PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (GFX0, Arg1)
                    }
                }

                If (CondRefOf (HNOT))
                {
                    HNOT (Arg0)
                }
                Else
                {
                    Notify (GFX0, 0x80) // Status Change
                }

                Return (Zero)
            }

            Method (GHDS, 1, NotSerialized)
            {
                TIDX = Arg0
                Return (GNOT (One, Zero))
            }

            Method (GLID, 1, NotSerialized)
            {
                If ((Arg0 == One))
                {
                    CLID = 0x03
                }
                Else
                {
                    CLID = Arg0
                }

                Return (GNOT (0x02, Zero))
            }

            Method (GDCK, 1, NotSerialized)
            {
                CDCK = Arg0
                Return (GNOT (0x04, Zero))
            }

            Method (PARD, 0, NotSerialized)
            {
                If (!ARDY)
                {
                    Sleep (ASLP)
                }

                Return (!ARDY)
            }

            Method (AINT, 2, NotSerialized)
            {
                If (!(TCHE & (One << Arg0)))
                {
                    Return (One)
                }

                If (PARD ())
                {
                    Return (One)
                }

                If ((Arg0 == 0x02))
                {
                    If (CPFM)
                    {
                        Local0 = (CPFM & 0x0F)
                        Local1 = (EPFM & 0x0F)
                        If ((Local0 == One))
                        {
                            If ((Local1 & 0x06))
                            {
                                PFIT = 0x06
                            }
                            Else
                            {
                                If ((Local1 & 0x08))
                                {
                                    PFIT = 0x08
                                }
                                Else
                                {
                                    PFIT = One
                                }
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            If ((Local1 & 0x08))
                            {
                                PFIT = 0x08
                            }
                            Else
                            {
                                If ((Local1 & One))
                                {
                                    PFIT = One
                                }
                                Else
                                {
                                    PFIT = 0x06
                                }
                            }
                        }

                        If ((Local0 == 0x08))
                        {
                            If ((Local1 & One))
                            {
                                PFIT = One
                            }
                            Else
                            {
                                If ((Local1 & 0x06))
                                {
                                    PFIT = 0x06
                                }
                                Else
                                {
                                    PFIT = 0x08
                                }
                            }
                        }
                    }
                    Else
                    {
                        PFIT ^= 0x07
                    }

                    PFIT |= 0x80000000
                    ASLC = 0x04
                }
                Else
                {
                    If ((Arg0 == One))
                    {
                        BCLP = ((Arg1 * 0xFF) / 0x64)
                        BCLP |= 0x80000000
                        ASLC = 0x02
                    }
                    Else
                    {
                        If ((Arg0 == Zero))
                        {
                            ALSI = Arg1
                            ASLC = One
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                }

                ASLE = One
                Return (Zero)
            }

            Method (SCIP, 0, NotSerialized)
            {
                If ((OVER != Zero))
                {
                    Return (!GSMI)
                }

                Return (Zero)
            }

            Device (^^MEM2)
            {
                Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
                Name (CRS1, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x20000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x40000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                })
                Name (CRS2, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x20000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x40004000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (IGDS)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    If ((((PNHM & 0x0FFF0FF0) == 0x000206A0) || ((PNHM & 0x0FFF0FFF
                        ) == 0x000306A0)))
                    {
                        Return (CRS1) /* \_SB_.MEM2.CRS1 */
                    }

                    Return (CRS2) /* \_SB_.MEM2.CRS2 */
                }
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00000410, 0x06) {}
        Processor (CPU1, 0x02, 0x00000410, 0x06) {}
        Processor (CPU2, 0x03, 0x00000410, 0x06) {}
        Processor (CPU3, 0x04, 0x00000410, 0x06) {}
        Processor (CPU4, 0x05, 0x00000410, 0x06) {}
        Processor (CPU5, 0x06, 0x00000410, 0x06) {}
        Processor (CPU6, 0x07, 0x00000410, 0x06) {}
        Processor (CPU7, 0x08, 0x00000410, 0x06) {}
    }

    Mutex (MUTX, 0x00)
    OperationRegion (DEB0, SystemIO, 0x80, One)
    Field (DEB0, ByteAcc, NoLock, Preserve)
    {
        DBG8,   8
    }

    OperationRegion (DEB1, SystemIO, 0x90, 0x02)
    Field (DEB1, WordAcc, NoLock, Preserve)
    {
        DBG9,   16
    }

    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 2, Serialized)
    {
        If ((Arg0 == Zero))
        {
            P80D = ((P80D & 0xFFFFFF00) | Arg1)
        }

        If ((Arg0 == One))
        {
            P80D = ((P80D & 0xFFFF00FF) | (Arg1 << 0x08))
        }

        If ((Arg0 == 0x02))
        {
            P80D = ((P80D & 0xFF00FFFF) | (Arg1 << 0x10))
        }

        If ((Arg0 == 0x03))
        {
            P80D = ((P80D & 0x00FFFFFF) | (Arg1 << 0x18))
        }

        P80H = P80D /* \P80D */
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        GPIC = Arg0
        PICM = Arg0
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        P80D = Zero
        P8XH (Zero, Arg0)
        PTS (Arg0)
        If (((Arg0 == 0x04) && (\_SB.PCI0.LPCB.EC.POWS == One)))
        {
            \_SB.PCI0.LPCB.EC.RSUS = One
        }

        If ((Arg0 == 0x03))
        {
            If ((DTSE && (TCNT > One)))
            {
                TRAP (TRTD, 0x1E)
            }
        }

        If ((((Arg0 == 0x03) || (Arg0 == 0x04)) || (Arg0 == 0x05)))
        {
            If ((PFLV == FDTP))
            {
                GP27 = One
            }
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        P8XH (One, 0xAB)
        WAK (Arg0)
        If (NEXP)
        {
            If ((OSCC & 0x02))
            {
                \_SB.PCI0.NHPG ()
            }

            If ((OSCC & 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }

        If ((Arg0 == 0x03))
        {
            If ((Zero == ACTT))
            {
                If ((ECON == One))
                {
                    \_SB.PCI0.LPCB.H_EC.CFAN = Zero
                }
            }
        }

        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            If ((DTSE && (TCNT > One)))
            {
                TRAP (TRTD, 0x14)
            }

            If ((OSYS == 0x07D2))
            {
                If ((CFGD & One))
                {
                    If ((\_PR.CPU0._PPC > Zero))
                    {
                        \_PR.CPU0._PPC -= One
                        PNOT ()
                        \_PR.CPU0._PPC += One
                        PNOT ()
                    }
                    Else
                    {
                        \_PR.CPU0._PPC += One
                        PNOT ()
                        \_PR.CPU0._PPC -= One
                        PNOT ()
                    }
                }
            }

            If ((ECON == One))
            {
                If ((LIDS != \_SB.PCI0.LPCB.H_EC.LSTE))
                {
                    LIDS = \_SB.PCI0.LPCB.H_EC.LSTE
                    If (IGDS)
                    {
                        If (\_SB.PCI0.GFX0.GLID (LIDS))
                        {
                            \_SB.PCI0.GFX0.CLID |= 0x80000000
                        }
                    }

                    Notify (\_SB.LID0, 0x80) // Status Change
                }

                If ((\_SB.PCI0.LPCB.H_EC.DOCK != DSTS))
                {
                    DSTS = \_SB.PCI0.LPCB.H_EC.DOCK
                    If ((\_SB.PCI0.HDEF.DCKS && One))
                    {
                        \_SB.PCI0.HDEF.DCKA = DSTS /* \DSTS */
                    }

                    If ((DSTS == One))
                    {
                        If ((Arg0 == 0x03))
                        {
                            Sleep (0x03E8)
                            SSMP = PDBR /* \PDBR */
                            Sleep (0x03E8)
                        }

                        Notify (\_SB.PCI0.DOCK, Zero) // Bus Check
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.DOCK, One) // Device Check
                    }
                }

                If ((BNUM == Zero))
                {
                    If ((\_SB.PCI0.LPCB.H_EC.VPWR != PWRS))
                    {
                        PWRS = \_SB.PCI0.LPCB.H_EC.VPWR
                        PNOT ()
                    }
                }
                Else
                {
                    If ((\_SB.PCI0.LPCB.H_EC.RPWR != PWRS))
                    {
                        PWRS = \_SB.PCI0.LPCB.H_EC.RPWR
                        PNOT ()
                    }
                }
            }

            If ((RP1D == Zero))
            {
                Notify (\_SB.PCI0.RP01, Zero) // Bus Check
            }

            If ((RP2D == Zero))
            {
                Notify (\_SB.PCI0.RP02, Zero) // Bus Check
            }

            If ((RP3D == Zero))
            {
                Notify (\_SB.PCI0.RP03, Zero) // Bus Check
            }

            If ((RP4D == Zero))
            {
                Notify (\_SB.PCI0.RP04, Zero) // Bus Check
            }

            If ((RP5D == Zero))
            {
                Notify (\_SB.PCI0.RP05, Zero) // Bus Check
            }

            If ((RP6D == Zero))
            {
                Notify (\_SB.PCI0.RP06, Zero) // Bus Check
            }

            If ((RP7D == Zero))
            {
                If ((DSTS == Zero))
                {
                    Notify (\_SB.PCI0.RP07, Zero) // Bus Check
                }
            }

            If ((RP8D == Zero))
            {
                If ((DSTS == Zero))
                {
                    Notify (\_SB.PCI0.RP08, Zero) // Bus Check
                }
            }
        }

        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (GETB, 3, Serialized)
    {
        Local0 = (Arg0 * 0x08)
        Local1 = (Arg1 * 0x08)
        CreateField (Arg2, Local0, Local1, TBF3)
        Return (TBF3) /* \GETB.TBF3 */
    }

    Method (PNOT, 0, Serialized)
    {
        If ((TCNT > One))
        {
            If ((PDC0 & 0x08))
            {
                Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                If ((PDC0 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81) // C-State Change
                }
            }

            If ((PDC1 & 0x08))
            {
                Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                If ((PDC1 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81) // C-State Change
                }
            }

            If ((PDC2 & 0x08))
            {
                Notify (\_PR.CPU2, 0x80) // Performance Capability Change
                If ((PDC2 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81) // C-State Change
                }
            }

            If ((PDC3 & 0x08))
            {
                Notify (\_PR.CPU3, 0x80) // Performance Capability Change
                If ((PDC3 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81) // C-State Change
                }
            }

            If ((PDC4 & 0x08))
            {
                Notify (\_PR.CPU4, 0x80) // Performance Capability Change
                If ((PDC4 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU4, 0x81) // C-State Change
                }
            }

            If ((PDC5 & 0x08))
            {
                Notify (\_PR.CPU5, 0x80) // Performance Capability Change
                If ((PDC5 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU5, 0x81) // C-State Change
                }
            }

            If ((PDC6 & 0x08))
            {
                Notify (\_PR.CPU6, 0x80) // Performance Capability Change
                If ((PDC6 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU6, 0x81) // C-State Change
                }
            }

            If ((PDC7 & 0x08))
            {
                Notify (\_PR.CPU7, 0x80) // Performance Capability Change
                If ((PDC7 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU7, 0x81) // C-State Change
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80) // Performance Capability Change
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81) // C-State Change
        }

        If ((ECON == One))
        {
            B1SC = \_SB.PCI0.LPCB.H_EC.B1CC
            B1SS = \_SB.PCI0.LPCB.H_EC.B1ST
            B2SC = \_SB.PCI0.LPCB.H_EC.B2CC
            B2SS = \_SB.PCI0.LPCB.H_EC.B2ST
            If ((OSYS >= 0x07D6))
            {
                Notify (\_SB.PCI0.LPCB.H_EC.BAT0, 0x81) // Information Change
                Notify (\_SB.PCI0.LPCB.H_EC.BAT1, 0x81) // Information Change
                Notify (\_SB.PCI0.LPCB.H_EC.BAT2, 0x81) // Information Change
            }
            Else
            {
                Notify (\_SB.PCI0.LPCB.H_EC.BAT0, 0x80) // Status Change
                Notify (\_SB.PCI0.LPCB.H_EC.BAT1, 0x80) // Status Change
                Notify (\_SB.PCI0.LPCB.H_EC.BAT2, 0x80) // Status Change
            }
        }
    }

    Method (TRAP, 2, Serialized)
    {
        SMIF = Arg1
        If ((Arg0 == TRTP))
        {
            TRP0 = Zero
        }

        If ((Arg0 == TRTD))
        {
            DTSF = Arg1
            TRPD = Zero
            Return (DTSF) /* \DTSF */
        }

        If ((Arg0 == TRTI))
        {
            TRPH = Zero
        }

        Return (SMIF) /* \SMIF */
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            OSYS = 0x07D0
            If (CondRefOf (_OSI, Local0))
            {
                If (_OSI ("Windows 2001"))
                {
                    OSYS = 0x07D1
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    OSYS = 0x07D1
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    OSYS = 0x07D2
                }

                If (_OSI ("Windows 2001.1"))
                {
                    OSYS = 0x07D3
                }

                If (_OSI ("Windows 2006"))
                {
                    OSYS = 0x07D6
                }

                If (_OSI ("Windows 2009"))
                {
                    OSYS = 0x07D9
                }
            }
        }

        Method (NHPG, 0, Serialized)
        {
            ^RP01.HPEX = Zero
            ^RP02.HPEX = Zero
            ^RP03.HPEX = Zero
            ^RP04.HPEX = Zero
            ^RP01.HPSX = One
            ^RP02.HPSX = One
            ^RP03.HPSX = One
            ^RP04.HPSX = One
        }

        Method (NPME, 0, Serialized)
        {
            ^RP01.PMEX = Zero
            ^RP02.PMEX = Zero
            ^RP03.PMEX = Zero
            ^RP04.PMEX = Zero
            ^RP05.PMEX = Zero
            ^RP06.PMEX = Zero
            ^RP07.PMEX = Zero
            ^RP08.PMEX = Zero
            ^RP01.PMSX = One
            ^RP02.PMSX = One
            ^RP03.PMSX = One
            ^RP04.PMSX = One
            ^RP05.PMSX = One
            ^RP06.PMSX = One
            ^RP07.PMSX = One
            ^RP08.PMSX = One
        }
    }

    Scope (\)
    {
        Name (PICM, Zero)
        Name (PRWP, Package (0x02)
        {
            Zero, 
            Zero
        })
        Method (GPRW, 2, NotSerialized)
        {
            Index (PRWP, Zero) = Arg0
            Local0 = (SS1 << One)
            Local0 |= (SS2 << 0x02)
            Local0 |= (SS3 << 0x03)
            Local0 |= (SS4 << 0x04)
            If (((One << Arg1) & Local0))
            {
                Index (PRWP, One) = Arg1
            }
            Else
            {
                Local0 >>= One
                FindSetLeftBit (Local0, Index (PRWP, One))
            }

            Return (PRWP) /* \PRWP */
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y2C)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00008000,         // Address Length
                    _Y2E)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y2F)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y30)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y31)
                Memory32Fixed (ReadWrite,
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED45000,         // Address Base
                    0x0004B000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFF000000,         // Address Base
                    0x01000000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y2D)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2C._BAS, RBR0)  // _BAS: Base Address
                RBR0 = (^^LPCB.RCBA << 0x0E)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2D._BAS, TBR0)  // _BAS: Base Address
                TBR0 = TBAB /* \TBAB */
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2D._LEN, TBLN)  // _LEN: Length
                If ((TBAB == Zero))
                {
                    TBLN = Zero
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2E._BAS, MBR0)  // _BAS: Base Address
                MBR0 = (MHBR << 0x0F)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2F._BAS, DBR0)  // _BAS: Base Address
                DBR0 = (DIBR << 0x0C)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y30._BAS, EBR0)  // _BAS: Base Address
                EBR0 = (EPBR << 0x0C)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y31._BAS, XBR0)  // _BAS: Base Address
                XBR0 = (PXBR << 0x1A)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y31._LEN, XSZ0)  // _LEN: Length
                XSZ0 = (0x10000000 >> PXSZ) /* \_SB_.PCI0.PXSZ */
                Return (BUF0) /* \_SB_.PCI0.PDRC.BUF0 */
            }
        }
    }

    Method (BRTN, 1, Serialized)
    {
        If (((DID1 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD01, Arg0)
        }

        If (((DID2 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD02, Arg0)
        }

        If (((DID3 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD03, Arg0)
        }

        If (((DID4 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD04, Arg0)
        }

        If (((DID5 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD05, Arg0)
        }

        If (((DID6 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD06, Arg0)
        }

        If (((DID7 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD07, Arg0)
        }

        If (((DID8 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD08, Arg0)
        }
    }

    Scope (_GPE)
    {
        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If ((RP1D == Zero))
            {
                \_SB.PCI0.RP01.HPME ()
                Notify (\_SB.PCI0.RP01, 0x02) // Device Wake
            }

            If ((RP2D == Zero))
            {
                \_SB.PCI0.RP02.HPME ()
                Notify (\_SB.PCI0.RP02, 0x02) // Device Wake
            }

            If ((RP3D == Zero))
            {
                \_SB.PCI0.RP03.HPME ()
                Notify (\_SB.PCI0.RP03, 0x02) // Device Wake
            }

            If ((RP4D == Zero))
            {
                \_SB.PCI0.RP04.HPME ()
                Notify (\_SB.PCI0.RP04, 0x02) // Device Wake
            }

            If ((RP5D == Zero))
            {
                \_SB.PCI0.RP05.HPME ()
                Notify (\_SB.PCI0.RP05, 0x02) // Device Wake
            }

            If ((RP6D == Zero))
            {
                \_SB.PCI0.RP06.HPME ()
                Notify (\_SB.PCI0.RP06, 0x02) // Device Wake
            }

            If ((RP7D == Zero))
            {
                \_SB.PCI0.RP07.HPME ()
                Notify (\_SB.PCI0.RP07, 0x02) // Device Wake
            }

            If ((RP8D == Zero))
            {
                \_SB.PCI0.RP08.HPME ()
                Notify (\_SB.PCI0.RP08, 0x02) // Device Wake
            }

            Notify (\_SB.PCI0.PEG0, 0x02) // Device Wake
            Notify (\_SB.PCI0.PEG0.PEGP, 0x02) // Device Wake
            Notify (\_SB.PCI0.PEG1, 0x02) // Device Wake
            Notify (\_SB.PCI0.PEG2, 0x02) // Device Wake
            Notify (\_SB.PCI0.PEG3, 0x02) // Device Wake
        }

        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.EHC1, 0x02) // Device Wake
            Notify (\_SB.PCI0.EHC2, 0x02) // Device Wake
            Notify (\_SB.PCI0.HDEF, 0x02) // Device Wake
            Notify (\_SB.PCI0.GLAN, 0x02) // Device Wake
        }

        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            L01C += One
            P8XH (Zero, One)
            P8XH (One, L01C)
            If (((RP1D == Zero) && \_SB.PCI0.RP01.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP01.PDCX)
                {
                    \_SB.PCI0.RP01.PDCX = One
                    \_SB.PCI0.RP01.HPSX = One
                    If (!\_SB.PCI0.RP01.PDSX)
                    {
                        \_SB.PCI0.RP01.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP01, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP01.HPSX = One
                }
            }

            If (((RP2D == Zero) && \_SB.PCI0.RP02.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP02.PDCX)
                {
                    \_SB.PCI0.RP02.PDCX = One
                    \_SB.PCI0.RP02.HPSX = One
                    If (!\_SB.PCI0.RP02.PDSX)
                    {
                        \_SB.PCI0.RP02.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP02, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP02.HPSX = One
                }
            }

            If (((RP3D == Zero) && \_SB.PCI0.RP03.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP03.PDCX)
                {
                    \_SB.PCI0.RP03.PDCX = One
                    \_SB.PCI0.RP03.HPSX = One
                    If (!\_SB.PCI0.RP03.PDSX)
                    {
                        \_SB.PCI0.RP03.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP03, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP03.HPSX = One
                }
            }

            If (((RP4D == Zero) && \_SB.PCI0.RP04.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP04.PDCX)
                {
                    \_SB.PCI0.RP04.PDCX = One
                    \_SB.PCI0.RP04.HPSX = One
                    If (!\_SB.PCI0.RP04.PDSX)
                    {
                        \_SB.PCI0.RP04.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP04, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP04.HPSX = One
                }
            }

            If (((RP5D == Zero) && \_SB.PCI0.RP05.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP05.PDCX)
                {
                    \_SB.PCI0.RP05.PDCX = One
                    \_SB.PCI0.RP05.HPSX = One
                    If (!\_SB.PCI0.RP05.PDSX)
                    {
                        \_SB.PCI0.RP05.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP05, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP05.HPSX = One
                }
            }

            If (((RP6D == Zero) && \_SB.PCI0.RP06.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP06.PDCX)
                {
                    \_SB.PCI0.RP06.PDCX = One
                    \_SB.PCI0.RP06.HPSX = One
                    If (!\_SB.PCI0.RP06.PDSX)
                    {
                        \_SB.PCI0.RP06.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP06, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP06.HPSX = One
                }
            }

            If (((RP7D == Zero) && \_SB.PCI0.RP07.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP07.PDCX)
                {
                    \_SB.PCI0.RP07.PDCX = One
                    \_SB.PCI0.RP07.HPSX = One
                    If (!\_SB.PCI0.RP07.PDSX)
                    {
                        \_SB.PCI0.RP07.L0SE = Zero
                    }

                    If (ECON)
                    {
                        If ((\_SB.PCI0.LPCB.H_EC.DOCK == Zero))
                        {
                            Notify (\_SB.PCI0.RP07, Zero) // Bus Check
                        }
                    }
                }
                Else
                {
                    \_SB.PCI0.RP07.HPSX = One
                }
            }

            If (((RP8D == Zero) && \_SB.PCI0.RP08.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP08.PDCX)
                {
                    \_SB.PCI0.RP08.PDCX = One
                    \_SB.PCI0.RP08.HPSX = One
                    If (!\_SB.PCI0.RP08.PDSX)
                    {
                        \_SB.PCI0.RP08.L0SE = Zero
                    }

                    If (ECON)
                    {
                        If ((\_SB.PCI0.LPCB.H_EC.DOCK == Zero))
                        {
                            Notify (\_SB.PCI0.RP08, Zero) // Bus Check
                        }
                    }
                }
                Else
                {
                    \_SB.PCI0.RP08.HPSX = One
                }
            }
        }

        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            GPEC = Zero
            If (CondRefOf (\_SB.PCI0.IEIT.EITV))
            {
                \_SB.PCI0.IEIT.EITV ()
            }

            Notify (\_TZ.TZ00, 0x80) // Thermal Status Change
            Notify (\_TZ.TZ01, 0x80) // Thermal Status Change
            If (CondRefOf (TNOT))
            {
                TNOT ()
            }
        }

        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If ((\_SB.PCI0.GFX0.GSSE && !GSMI))
            {
                \_SB.PCI0.GFX0.GSCI ()
            }
        }

        Method (_L07, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \_SB.PCI0.SBUS.HSTS = 0x20
        }

        Method (_L1E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If ((ECON == Zero))
            {
                Return (Zero)
            }

            If ((LIDS != \_SB.PCI0.LPCB.H_EC.LSTE))
            {
                LIDS = \_SB.PCI0.LPCB.H_EC.LSTE
                If (IGDS)
                {
                    If (\_SB.PCI0.GFX0.GLID (LIDS))
                    {
                        \_SB.PCI0.GFX0.CLID |= 0x80000000
                    }
                }

                Notify (\_SB.LID0, 0x80) // Status Change
            }
            Else
            {
                If ((BNUM == Zero))
                {
                    If ((PWRS != \_SB.PCI0.LPCB.H_EC.VPWR))
                    {
                        PWRS = \_SB.PCI0.LPCB.H_EC.VPWR
                        PNOT ()
                    }
                }

                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            Return (Zero)
        }
    }

    Scope (_TZ)
    {
        Name (ETMD, One)
        Name (THLD, 0x78)
        PowerResource (FN00, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (VFN0) /* \VFN0 */
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                VFN0 = One
                If ((ECON && ETMD))
                {
                    \_SB.PCI0.LPCB.H_EC.PENV = AC0F /* \AC0F */
                    \_SB.PCI0.LPCB.H_EC.ECMD (0x1A)
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                VFN0 = Zero
                If ((ECON && ETMD))
                {
                    If ((VFN1 == Zero))
                    {
                        \_SB.PCI0.LPCB.H_EC.PENV = Zero
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.H_EC.PENV = AC1F /* \AC1F */
                    }

                    \_SB.PCI0.LPCB.H_EC.ECMD (0x1A)
                }
            }
        }

        Device (FAN0)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN00
            })
        }

        PowerResource (FN01, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (VFN1) /* \VFN1 */
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                VFN1 = One
                If ((ECON && ETMD))
                {
                    \_SB.PCI0.LPCB.H_EC.PENV = AC1F /* \AC1F */
                    \_SB.PCI0.LPCB.H_EC.ECMD (0x1A)
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                VFN1 = Zero
                If ((ECON && ETMD))
                {
                    \_SB.PCI0.LPCB.H_EC.PENV = Zero
                    \_SB.PCI0.LPCB.H_EC.ECMD (0x1A)
                }
            }
        }

        Device (FAN1)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN01
            })
        }

        PowerResource (FN02, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (VFN2) /* \VFN2 */
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                VFN2 = One
                If ((ECON && ETMD))
                {
                    \_SB.PCI0.LPCB.H_EC.PENV = Zero
                    \_SB.PCI0.LPCB.H_EC.ECMD (0x1A)
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                VFN2 = Zero
                If ((ECON && ETMD))
                {
                    \_SB.PCI0.LPCB.H_EC.PENV = Zero
                    \_SB.PCI0.LPCB.H_EC.ECMD (0x1A)
                }
            }
        }

        Device (FAN2)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN02
            })
        }

        PowerResource (FN03, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (VFN3) /* \VFN3 */
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                VFN3 = One
                If ((ECON && ETMD))
                {
                    \_SB.PCI0.LPCB.H_EC.PENV = Zero
                    \_SB.PCI0.LPCB.H_EC.ECMD (0x1A)
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                VFN3 = Zero
                If ((ECON && ETMD))
                {
                    \_SB.PCI0.LPCB.H_EC.PENV = Zero
                    \_SB.PCI0.LPCB.H_EC.ECMD (0x1A)
                }
            }
        }

        Device (FAN3)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN03
            })
        }

        PowerResource (FN04, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (VFN4) /* \VFN4 */
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                VFN4 = One
                If ((ECON && ETMD))
                {
                    \_SB.PCI0.LPCB.H_EC.PENV = Zero
                    \_SB.PCI0.LPCB.H_EC.ECMD (0x1A)
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                VFN4 = Zero
                If ((ECON && ETMD))
                {
                    \_SB.PCI0.LPCB.H_EC.PENV = Zero
                    \_SB.PCI0.LPCB.H_EC.ECMD (0x1A)
                }
            }
        }

        Device (FAN4)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN04
            })
        }

        ThermalZone (TZ00)
        {
            Name (PTMP, 0x0BB8)
            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                CTYP = Arg0
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                If (CondRefOf (\_PR.ACRT))
                {
                    If ((\_PR.ACRT != Zero))
                    {
                        Return ((0x0AAC + (\_PR.ACRT * 0x0A)))
                    }
                }

                Return ((0x0AAC + (CRTT * 0x0A)))
            }

            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling
            {
                If (CondRefOf (\_PR.AAC0))
                {
                    If ((\_PR.AAC0 != Zero))
                    {
                        Return ((0x0AAC + (\_PR.AAC0 * 0x0A)))
                    }
                }

                Return ((0x0AAC + (ACTT * 0x0A)))
            }

            Method (_AC1, 0, Serialized)  // _ACx: Active Cooling
            {
                Return ((0x0AAC + (ACT1 * 0x0A)))
            }

            Method (_AC2, 0, Serialized)  // _ACx: Active Cooling
            {
                Return (0x0AAC)
            }

            Method (_AC3, 0, Serialized)  // _ACx: Active Cooling
            {
                Return (0x0AAC)
            }

            Method (_AC4, 0, Serialized)  // _ACx: Active Cooling
            {
                Return (0x0AAC)
            }

            Name (_AL0, Package (0x01)  // _ALx: Active List
            {
                FAN0
            })
            Name (_AL1, Package (0x01)  // _ALx: Active List
            {
                FAN1
            })
            Name (_AL2, Package (0x01)  // _ALx: Active List
            {
                FAN2
            })
            Name (_AL3, Package (0x01)  // _ALx: Active List
            {
                FAN3
            })
            Name (_AL4, Package (0x01)  // _ALx: Active List
            {
                FAN4
            })
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (!ETMD)
                {
                    Return (0x0BB8)
                }

                If ((DTSE == 0x03))
                {
                    Return ((0x0B10 + (CRTT * 0x0A)))
                }

                If ((DTSE == One))
                {
                    If ((PKGA == One))
                    {
                        Local0 = PDTS /* \PDTS */
                        Return ((0x0AAC + (Local0 * 0x0A)))
                    }

                    Local0 = DTS1 /* \DTS1 */
                    If ((DTS2 > Local0))
                    {
                        Local0 = DTS2 /* \DTS2 */
                    }

                    If ((DTS3 > Local0))
                    {
                        Local0 = DTS3 /* \DTS3 */
                    }

                    If ((DTS4 > Local0))
                    {
                        Local0 = DTS4 /* \DTS4 */
                    }

                    Return ((0x0AAC + (Local0 * 0x0A)))
                }

                If (ECON)
                {
                    Local0 = \_SB.PCI0.LPCB.H_EC.PLMX
                    Local0 = (0x0AAC + (Local0 * 0x0A))
                    PTMP = Local0
                    Return (Local0)
                }

                Return (0x0BC2)
            }
        }

        ThermalZone (TZ01)
        {
            Name (PTMP, 0x0BB8)
            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                CTYP = Arg0
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                If (CondRefOf (\_PR.ACRT))
                {
                    If ((\_PR.ACRT != Zero))
                    {
                        Return ((0x0AAC + (\_PR.ACRT * 0x0A)))
                    }
                }

                Return ((0x0AAC + (CRTT * 0x0A)))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (!ETMD)
                {
                    Return (0x0BCC)
                }

                If ((DTSE == 0x03))
                {
                    Return ((0x0B10 + (CRTT * 0x0A)))
                }

                If ((DTSE == One))
                {
                    If ((PKGA == One))
                    {
                        Local0 = PDTS /* \PDTS */
                        Return ((0x0AAC + (Local0 * 0x0A)))
                    }

                    Local0 = DTS1 /* \DTS1 */
                    If ((DTS2 > Local0))
                    {
                        Local0 = DTS2 /* \DTS2 */
                    }

                    If ((DTS3 > Local0))
                    {
                        Local0 = DTS3 /* \DTS3 */
                    }

                    If ((DTS4 > Local0))
                    {
                        Local0 = DTS4 /* \DTS4 */
                    }

                    Return ((0x0AAC + (Local0 * 0x0A)))
                }

                If (ECON)
                {
                    Local0 = \_SB.PCI0.LPCB.H_EC.PECH
                    Local0 *= 0x0A
                    Local1 = \_SB.PCI0.LPCB.H_EC.PECL
                    Local1 >>= 0x02
                    Local1 = ((Local1 * 0x0A) / 0x40)
                    Local0 += Local1
                    Local0 += 0x0AAC
                    PTMP = Local0
                    Return (Local0)
                }

                Return (0x0BD6)
            }

            Method (_PSL, 0, Serialized)  // _PSL: Passive List
            {
                If ((TCNT == 0x08))
                {
                    Return (Package (0x08)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3, 
                        \_PR.CPU4, 
                        \_PR.CPU5, 
                        \_PR.CPU6, 
                        \_PR.CPU7
                    })
                }

                If ((TCNT == 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3
                    })
                }

                If ((TCNT == 0x02))
                {
                    Return (Package (0x02)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1
                    })
                }

                Return (Package (0x01)
                {
                    \_PR.CPU0
                })
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                If (CondRefOf (\_PR.APSV))
                {
                    If ((\_PR.APSV != Zero))
                    {
                        Return ((0x0AAC + (\_PR.APSV * 0x0A)))
                    }
                }

                Return ((0x0AAC + (PSVT * 0x0A)))
            }

            Method (_TC1, 0, Serialized)  // _TC1: Thermal Constant 1
            {
                Return (TC1V) /* \TC1V */
            }

            Method (_TC2, 0, Serialized)  // _TC2: Thermal Constant 2
            {
                Return (TC2V) /* \TC2V */
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (TSPV) /* \TSPV */
            }
        }
    }

    Scope (_SB.PCI0.SAT0)
    {
        Device (PRT2)
        {
            Name (_ADR, 0x0002FFFF)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66")))
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    _T_0 = ToInteger (Arg2)
                    If ((_T_0 == Zero))
                    {
                        Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                        _T_1 = ToInteger (Arg1)
                        If ((_T_1 == One))
                        {
                            If ((PFLV == FDTP))
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             /* . */
                                })
                            }

                            Return (Buffer (One)
                            {
                                 0x0F                                             /* . */
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             /* . */
                            })
                        }
                    }
                    Else
                    {
                        If ((_T_0 == One))
                        {
                            Return (One)
                        }
                        Else
                        {
                            If ((_T_0 == 0x02))
                            {
                                GPE3 = Zero
                                If (((GL00 & 0x08) == 0x08))
                                {
                                    GIV0 |= 0x08
                                }
                                Else
                                {
                                    GIV0 &= 0xF7
                                }

                                GL08 &= 0xEF
                                Sleep (0xC8)
                                GPS3 = One
                                GPE3 = One
                                Return (One)
                            }
                            Else
                            {
                                If ((_T_0 == 0x03))
                                {
                                    GPE3 = Zero
                                    GPS3 = One
                                    GL08 |= 0x10
                                    Return (One)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L13, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If ((PFLV == FDTP))
            {
                Return (Zero)
            }

            GPE3 = Zero
            GL08 |= 0x10
            Notify (\_SB.PCI0.SAT0, 0x82) // Device-Specific Change
            Return (Zero)
        }
    }

    Scope (_SB)
    {
        Name (LUCD, Buffer (0x7D)
        {
            /* 0000 */  0x4C, 0x75, 0x63, 0x69, 0x64, 0x4C, 0x6F, 0x67,  /* LucidLog */
            /* 0008 */  0x69, 0x78, 0x00, 0x68, 0x00, 0x01, 0x00, 0x01,  /* ix.h.... */
            /* 0010 */  0x00, 0x00, 0x00, 0xFC, 0x17, 0x61, 0x34, 0x38,  /* .....a48 */
            /* 0018 */  0x37, 0x32, 0x61, 0x64, 0x32, 0x64, 0x64, 0x33,  /* 72ad2dd3 */
            /* 0020 */  0x32, 0x35, 0x63, 0x61, 0x62, 0x63, 0x34, 0x37,  /* 25cabc47 */
            /* 0028 */  0x35, 0x34, 0x35, 0x64, 0x33, 0x31, 0x35, 0x39,  /* 545d3159 */
            /* 0030 */  0x64, 0x65, 0x61, 0x36, 0x37, 0x35, 0x62, 0x61,  /* dea675ba */
            /* 0038 */  0x33, 0x65, 0x36, 0x65, 0x35, 0x39, 0x36, 0x32,  /* 3e6e5962 */
            /* 0040 */  0x66, 0x32, 0x64, 0x37, 0x65, 0x62, 0x31, 0x62,  /* f2d7eb1b */
            /* 0048 */  0x64, 0x30, 0x61, 0x37, 0x62, 0x63, 0x64, 0x30,  /* d0a7bcd0 */
            /* 0050 */  0x36, 0x39, 0x66, 0x65, 0x64, 0x30, 0x30, 0x30,  /* 69fed000 */
            /* 0058 */  0x30, 0x32, 0x33, 0x32, 0x33, 0x63, 0x65, 0x64,  /* 02323ced */
            /* 0060 */  0x31, 0x36, 0x35, 0x31, 0x36, 0x33, 0x65, 0x35,  /* 165163e5 */
            /* 0068 */  0x31, 0x65, 0x30, 0x36, 0x65, 0x30, 0x31, 0x64,  /* 1e06e01d */
            /* 0070 */  0x63, 0x34, 0x34, 0x63, 0x33, 0x35, 0x66, 0x65,  /* c44c35fe */
            /* 0078 */  0x61, 0x33, 0x65, 0x61, 0x66                     /* a3eaf */
        })
    }

    Scope (_TZ)
    {
        Method (KELV, 1, NotSerialized)
        {
            Local0 = (Arg0 & 0xFF)
            Local0 *= 0x0A
            Local0 += 0x0AAC
            Return (Local0)
        }

        ThermalZone (THRM)
        {
            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                If (\_SB.PCI0.LPCB.EC.MYEC)
                {
                    If (\_SB.PCI0.LPCB.EC.CTSD)
                    {
                        \_SB.PCI0.LPCB.EC.CTSD = Zero
                        Return (KELV (0x6E))
                    }
                    Else
                    {
                        Local0 = \_SB.PCI0.LPCB.EC.CPUT
                        Local0 += 0x02
                        Return (KELV (Local0))
                    }
                }
                Else
                {
                    Return (KELV (0x2D))
                }
            }

            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (KELV (0x64))
            }
        }
    }

    Scope (_SB.PCI0.LPCB)
    {
        Mutex (\MUEC, 0x00)
        Device (EC)
        {
            Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
            Name (_GPE, 0x17)  // _GPE: General Purpose Events
            Name (CTID, Zero)
            Name (MYEC, One)
            Name (CTSD, Zero)
            Name (\PTHR, Zero)
            OperationRegion (IO_2, SystemIO, 0x68, 0x05)
            Field (IO_2, ByteAcc, Lock, Preserve)
            {
                DAT2,   8, 
                Offset (0x04), 
                CMD2,   8
            }

            Field (IO_2, ByteAcc, Lock, Preserve)
            {
                Offset (0x04), 
                OUT2,   1, 
                INP2,   1
            }

            Method (IRD2, 0, Serialized)
            {
                Return (!INP2)
            }

            Method (ORD2, 0, Serialized)
            {
                Return (OUT2) /* \_SB_.PCI0.LPCB.EC__.OUT2 */
            }

            OperationRegion (IO8, SystemIO, 0x80, One)
            Field (IO8, ByteAcc, Lock, Preserve)
            {
                DBG8,   8
            }

            OperationRegion (TEST, SystemIO, 0xB2, One)
            Field (TEST, ByteAcc, Lock, Preserve)
            {
                APMC,   8
            }

            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x03))
                {
                    MYEC = Arg1
                    If ((Arg1 == One))
                    {
                        If (_OSI ("Windows 2009"))
                        {
                            OSVR = 0x03
                        }
                        Else
                        {
                            If (_OSI ("Windows 2006"))
                            {
                                OSVR = 0x02
                            }
                            Else
                            {
                                If (_OSI ("Windows 2001"))
                                {
                                    OSVR = One
                                }
                                Else
                                {
                                    If (_OSI ("Windows 2001 SP1"))
                                    {
                                        OSVR = One
                                    }
                                    Else
                                    {
                                        If (_OSI ("Windows 2001 SP2"))
                                        {
                                            OSVR = One
                                        }
                                        Else
                                        {
                                            If (_OSI ("Windows 2001 SP3"))
                                            {
                                                OSVR = One
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                CTSD = Zero
                ^^^GFX0.CLID = LIDS /* \_SB_.PCI0.LPCB.EC__.LIDS */
                If (POWS)
                {
                    PWRS = One
                }
                Else
                {
                    PWRS = Zero
                }

                PNOT ()
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0062,             // Range Minimum
                    0x0062,             // Range Maximum
                    0x00,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0066,             // Range Minimum
                    0x0066,             // Range Maximum
                    0x00,               // Alignment
                    0x01,               // Length
                    )
            })
            OperationRegion (EC, EmbeddedControl, Zero, 0x0100)
            Field (EC, ByteAcc, NoLock, Preserve)
            {
                SMPR,   8, 
                SMST,   8, 
                SMAD,   8, 
                SMCM,   8, 
                SMD0,   264, 
                SMAA,   8, 
                Offset (0x2C), 
                HSTT,   1, 
                Offset (0x2D), 
                Offset (0x2E), 
                    ,   6, 
                PXCT,   1, 
                Offset (0x30), 
                POWS,   1, 
                LIDS,   1, 
                KBCS,   1, 
                Offset (0x31), 
                MBTS,   1, 
                MBCS,   1, 
                MBDS,   1, 
                MBFS,   1, 
                MBWS,   1, 
                MBLS,   1, 
                MBCL,   1, 
                MBFL,   1, 
                Offset (0x34), 
                HSKS,   3, 
                    ,   1, 
                OSVR,   4, 
                Offset (0x38), 
                MDCL,   8, 
                MDCH,   8, 
                MDVL,   8, 
                MDVH,   8, 
                MCAL,   8, 
                MCAH,   8, 
                MSTL,   8, 
                MSTH,   8, 
                MCCL,   8, 
                MCCH,   8, 
                MPOL,   8, 
                MPOH,   8, 
                MFCL,   8, 
                MFCH,   8, 
                MCUL,   8, 
                MCUH,   8, 
                MRCL,   8, 
                MRCH,   8, 
                MVOL,   8, 
                MVOH,   8, 
                MTEL,   8, 
                MTEH,   8, 
                RSV1,   8, 
                RSV2,   8, 
                SDCL,   8, 
                SDCH,   8, 
                SDVL,   8, 
                SDVH,   8, 
                SCAL,   8, 
                SCAH,   8, 
                SSTL,   8, 
                SSTH,   8, 
                SCCL,   8, 
                SCCH,   8, 
                SPOL,   8, 
                SPOH,   8, 
                SFCL,   8, 
                SFCH,   8, 
                SCUL,   8, 
                SCUH,   8, 
                SRCL,   8, 
                SRCH,   8, 
                SVOL,   8, 
                SVOH,   8, 
                STEL,   8, 
                STEH,   8, 
                Offset (0x68), 
                CPUT,   8, 
                Offset (0x7E), 
                RES1,   3, 
                CHET,   1, 
                Offset (0x80), 
                SYST,   8, 
                Offset (0xBC), 
                OSC1,   8, 
                OSC2,   8, 
                OSPS,   8, 
                RECY,   1, 
                RSUS,   1, 
                Offset (0xC0), 
                Offset (0xC5), 
                OPTS,   8, 
                Offset (0xCF), 
                ADP,    1, 
                    ,   1, 
                CHG,    1, 
                Offset (0xD0), 
                PCMD,   8, 
                Offset (0xDD), 
                BCLR,   8, 
                Offset (0xE4), 
                    ,   1, 
                TURB,   1, 
                Offset (0xED), 
                SCIC,   8, 
                Offset (0xF1), 
                BRLV,   8, 
                Offset (0xFE), 
                DCBL,   8, 
                ACBL,   8
            }

            Device (ADP1)
            {
                Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
                Name (BFLG, One)
                Name (ACP, One)
                Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                {
                    If (POWS)
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                {
                    _SB
                })
            }

            Name (BIF0, Package (0x0D)
            {
                One, 
                0x1130, 
                0x1130, 
                One, 
                0x39D0, 
                Zero, 
                Zero, 
                One, 
                One, 
                "MS-1482", 
                "1", 
                "LION", 
                ""
            })
            Name (STAT, Package (0x04)
            {
                0x02, 
                0x0500, 
                0x0800, 
                0x03E8
            })
            Name (PPP0, 0xFFFFFFFF)
            Name (PPP1, 0xFFFFFFFF)
            Name (PPP2, 0xFFFFFFFF)
            Name (PPP3, 0xFFFFFFFF)
            Device (BAT1)
            {
                Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                {
                    _SB
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (MYEC)
                    {
                        If (MBTS)
                        {
                            Return (0x1F)
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }

                Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                {
                    If (MYEC)
                    {
                        UPBI ()
                    }
                    Else
                    {
                        IVBI ()
                        DBG8 = 0x99
                        Sleep (0x03E8)
                    }

                    Return (BIF0) /* \_SB_.PCI0.LPCB.EC__.BIF0 */
                }

                Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                {
                    If (MYEC)
                    {
                        UPBS ()
                    }
                    Else
                    {
                        IVBS ()
                    }

                    Return (STAT) /* \_SB_.PCI0.LPCB.EC__.STAT */
                }

                Method (IVBI, 0, NotSerialized)
                {
                    Index (BIF0, One) = 0xFFFFFFFF
                    Index (BIF0, 0x02) = 0xFFFFFFFF
                    Index (BIF0, 0x04) = 0xFFFFFFFF
                    Index (BIF0, 0x09) = "Wrong"
                    Index (BIF0, 0x0A) = " "
                    Index (BIF0, 0x0B) = "Wrong"
                    Index (BIF0, 0x0C) = "Wrong"
                }

                Method (IVBS, 0, NotSerialized)
                {
                    Index (STAT, Zero) = Zero
                    Index (STAT, One) = 0xFFFFFFFF
                    Index (STAT, 0x02) = 0xFFFFFFFF
                    Index (STAT, 0x03) = 0x2710
                }

                Method (UPBI, 0, NotSerialized)
                {
                    Local0 = Zero
                    Local1 = Zero
                    Local2 = Zero
                    Local3 = Zero
                    Local0 = MDCH /* \_SB_.PCI0.LPCB.EC__.MDCH */
                    Local1 = MDCL /* \_SB_.PCI0.LPCB.EC__.MDCL */
                    Local0 <<= 0x08
                    Local0 |= Local1
                    Index (BIF0, One) = Local0
                    If ((Local0 == 0x17D4))
                    {
                        Index (BIF0, 0x09) = "PC-VP-BP78"
                    }
                    Else
                    {
                        Index (BIF0, 0x09) = "PC-VP-BP77"
                    }

                    Local0 = MFCH /* \_SB_.PCI0.LPCB.EC__.MFCH */
                    Local1 = MFCL /* \_SB_.PCI0.LPCB.EC__.MFCL */
                    OSC2 = MFCH /* \_SB_.PCI0.LPCB.EC__.MFCH */
                    OSC1 = MFCL /* \_SB_.PCI0.LPCB.EC__.MFCL */
                    Local0 <<= 0x08
                    Local1 |= Local0
                    Index (BIF0, 0x02) = Local1
                    Local0 = MDVH /* \_SB_.PCI0.LPCB.EC__.MDVH */
                    Local2 = MDVL /* \_SB_.PCI0.LPCB.EC__.MDVL */
                    Local0 <<= 0x08
                    Local2 |= Local0
                    Index (BIF0, 0x04) = Local2
                    Index (BIF0, 0x0A) = ""
                    Index (BIF0, 0x0B) = "LION"
                    Local0 = CTID /* \_SB_.PCI0.LPCB.EC__.CTID */
                    If ((Local0 == Zero))
                    {
                        Index (BIF0, 0x0C) = "NEC"
                    }
                    Else
                    {
                        Index (BIF0, 0x0C) = "NEC"
                    }
                }

                Method (UPBS, 0, NotSerialized)
                {
                    Local0 = Zero
                    Local1 = Zero
                    Local2 = Zero
                    Local3 = Zero
                    Local4 = Zero
                    Local7 = Zero
                    Local0 = MBTS /* \_SB_.PCI0.LPCB.EC__.MBTS */
                    If ((Local0 == One))
                    {
                        Local0 = POWS /* \_SB_.PCI0.LPCB.EC__.POWS */
                        If ((Local0 == One))
                        {
                            Local1 = MBCS /* \_SB_.PCI0.LPCB.EC__.MBCS */
                            If ((Local1 == One))
                            {
                                Local4 |= 0x02
                            }
                        }
                        Else
                        {
                            Local4 |= One
                            Local0 = MBLS /* \_SB_.PCI0.LPCB.EC__.MBLS */
                            If ((Local0 == One))
                            {
                                Local4 |= 0x04
                            }
                        }

                        Local0 = POWS /* \_SB_.PCI0.LPCB.EC__.POWS */
                        If ((Local0 == One))
                        {
                            Local0 = MBCS /* \_SB_.PCI0.LPCB.EC__.MBCS */
                            If ((Local0 == One))
                            {
                                Local0 = MCUH /* \_SB_.PCI0.LPCB.EC__.MCUH */
                                Local1 = MCUL /* \_SB_.PCI0.LPCB.EC__.MCUL */
                                Local0 <<= 0x08
                                Local1 |= Local0
                                If ((Local1 == 0xFFFF))
                                {
                                    Local1 = 0xFFFFFFFF
                                }

                                Index (STAT, One) = Local1
                            }
                            Else
                            {
                                Index (STAT, One) = Zero
                            }
                        }
                        Else
                        {
                            Local0 = MCUH /* \_SB_.PCI0.LPCB.EC__.MCUH */
                            Local1 = MCUL /* \_SB_.PCI0.LPCB.EC__.MCUL */
                            Local0 <<= 0x08
                            Local1 |= Local0
                            Local1 ^= 0xFFFF
                            If ((Local1 == Zero))
                            {
                                Local1 = 0xFFFFFFFF
                            }

                            Index (STAT, One) = Local1
                        }

                        Local0 = MRCH /* \_SB_.PCI0.LPCB.EC__.MRCH */
                        Local2 = MRCL /* \_SB_.PCI0.LPCB.EC__.MRCL */
                        Local0 <<= 0x08
                        Local2 |= Local0
                        PPP0 = Local2
                        Local0 = MFCH /* \_SB_.PCI0.LPCB.EC__.MFCH */
                        Local2 = MFCL /* \_SB_.PCI0.LPCB.EC__.MFCL */
                        Local0 <<= 0x08
                        Local2 |= Local0
                        PPP1 = Local2
                        Local0 = OSC2 /* \_SB_.PCI0.LPCB.EC__.OSC2 */
                        Local2 = OSC1 /* \_SB_.PCI0.LPCB.EC__.OSC1 */
                        Local0 <<= 0x08
                        Local2 |= Local0
                        PPP2 = Local2
                        PPP3 = (PPP0 * PPP2) /* \_SB_.PCI0.LPCB.EC__.PPP2 */
                        Divide (PPP3, PPP1, PPP2, PPP0) /* \_SB_.PCI0.LPCB.EC__.PPP0 */
                        Index (STAT, 0x02) = PPP0 /* \_SB_.PCI0.LPCB.EC__.PPP0 */
                        Local0 = MVOH /* \_SB_.PCI0.LPCB.EC__.MVOH */
                        Local3 = MVOL /* \_SB_.PCI0.LPCB.EC__.MVOL */
                        Local0 <<= 0x08
                        Local3 |= Local0
                        Index (STAT, 0x03) = Local3
                        Index (STAT, Zero) = Local4
                        Sleep (0x64)
                    }
                    Else
                    {
                        IVBS ()
                    }
                }
            }

            Device (LID0)
            {
                Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
                Method (_LID, 0, NotSerialized)  // _LID: Lid Status
                {
                    If (MYEC)
                    {
                        Local0 = LIDS /* \_SB_.PCI0.LPCB.EC__.LIDS */
                    }
                    Else
                    {
                        Local0 = One
                    }

                    Return (Local0)
                }
            }

            Method (_Q70, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0x70
                DBG8 = 0x70
            }

            Method (_Q78, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0x78
                DBG8 = 0x78
            }

            Method (_Q80, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0x80
                DBG8 = 0x80
                CHET = One
                PTHR |= One /* \PTHR */
                Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU2, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU3, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU4, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU5, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU6, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU7, 0x80) // Performance Capability Change
            }

            Method (_Q81, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0x81
                DBG8 = 0x81
                CHET = One
                PTHR |= One /* \PTHR */
                Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU2, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU3, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU4, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU5, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU6, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU7, 0x80) // Performance Capability Change
            }

            Method (_Q82, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0x82
                DBG8 = 0x82
                PTHR &= 0xFE /* \PTHR */
                Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU2, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU3, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU4, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU5, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU6, 0x80) // Performance Capability Change
                Sleep (0x64)
                Notify (\_PR.CPU7, 0x80) // Performance Capability Change
            }

            Method (_Q83, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0x83
                DBG8 = 0x83
                Local0 = Zero
                Local0 = POWS /* \_SB_.PCI0.LPCB.EC__.POWS */
                If ((Local0 == One))
                {
                    ^ADP1.ACP = One
                    If (_OSI ("Windows 2009")) {}
                    Else
                    {
                        Local1 = 0x08
                        BRLV = Local1
                    }

                    PWRS = One
                }
                Else
                {
                    ^ADP1.ACP = Zero
                    If (_OSI ("Windows 2009")) {}
                    Else
                    {
                        Local1 = Zero
                        BRLV = Local1
                    }

                    PWRS = Zero
                }

                PNOT ()
                Notify (ADP1, 0x80) // Status Change
            }

            Method (_Q84, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0x84
                DBG8 = 0x84
                Notify (LID0, 0x80) // Status Change
            }

            Method (_QBD, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0xBD
                DBG8 = 0xBD
            }

            Method (_Q85, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0x85
                DBG8 = 0x85
                CTSD = One
                Notify (\_TZ.THRM, 0x80) // Thermal Status Change
            }

            Method (_Q86, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0x86
                DBG8 = 0x86
            }

            Method (_Q87, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0x87
                DBG8 = 0x87
                Local0 = Zero
                Local0 = MBTS /* \_SB_.PCI0.LPCB.EC__.MBTS */
                If ((Local0 == One))
                {
                    ^ADP1.BFLG = One
                    Notify (BAT1, 0x80) // Status Change
                }
                Else
                {
                    ^ADP1.BFLG = Zero
                    Notify (BAT1, 0x81) // Information Change
                }

                Notify (ADP1, 0x80) // Status Change
            }

            Method (_Q77, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0x77
                DBG8 = 0x77
            }

            Method (_Q88, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0x88
                DBG8 = 0x88
            }

            Method (_Q89, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0x89
                DBG8 = 0x89
            }

            Method (_Q8A, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0x8A
                DBG8 = 0x8A
                CTSD = One
                Notify (\_TZ.THRM, 0x80) // Thermal Status Change
            }

            Method (_Q8B, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0x8B
                DBG8 = 0x8B
            }

            Method (_Q8C, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0x8C
                DBG8 = 0x8C
            }

            Method (_Q90, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0x90
                DBG8 = 0x90
            }

            Method (_Q92, 0, NotSerialized)  // _Qxx: EC Query
            {
                DBG8 = 0x92
                SCIC = 0x92
            }

            Method (_Q93, 0, NotSerialized)  // _Qxx: EC Query
            {
                DBG8 = 0x93
                SCIC = 0x93
            }

            OperationRegion (\SCRP, SystemIO, 0x1280, 0x04)
            Field (SCRP, ByteAcc, NoLock, Preserve)
            {
                CR00,   8, 
                CR01,   8, 
                CR02,   8, 
                CR03,   8
            }

            Method (_QB4, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0xB4
                DBG8 = 0xB4
                If ((_OSI ("Windows 2006") || _OSI ("Windows 2009")))
                {
                    ^^^GFX0.GHDS (One)
                    Sleep (0x02EE)
                }
            }

            Method (_QB5, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0xB5
                DBG8 = 0xB5
            }

            Method (_QB6, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0xB6
                DBG8 = 0xB6
            }

            Method (_QB7, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0xB7
                DBG8 = 0xB7
                If ((_OSI ("Windows 2006") || _OSI ("Windows 2009")))
                {
                    BRTN (0x87)
                }
            }

            Method (_QB8, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0xB8
                DBG8 = 0xB8
                If ((_OSI ("Windows 2006") || _OSI ("Windows 2009")))
                {
                    BRTN (0x86)
                }
            }

            Method (_QB9, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0xB9
                DBG8 = 0xB9
                HSTT = Zero
            }

            Method (_Q74, 0, NotSerialized)  // _Qxx: EC Query
            {
                SCIC = 0x74
                DBG8 = 0x74
                If (((GL08 & 0x10) == 0x10)) {}
                Else
                {
                    GPE3 = Zero
                    GL08 |= 0x10
                }
            }

            OperationRegion (LP4D, SystemIO, 0x4D, 0x02)
            Field (LP4D, WordAcc, NoLock, Preserve)
            {
                IO4D,   16
            }

            OperationRegion (LP4F, SystemIO, 0x4F, One)
            Field (LP4F, ByteAcc, NoLock, Preserve)
            {
                IO4F,   8
            }

            OperationRegion (IO, SystemIO, 0x62, 0x05)
            Field (IO, ByteAcc, Lock, Preserve)
            {
                DAT1,   8, 
                Offset (0x04), 
                CMD1,   8
            }

            Field (IO, ByteAcc, Lock, Preserve)
            {
                Offset (0x04), 
                OUTS,   1, 
                INPS,   1
            }

            Method (IRDY, 0, Serialized)
            {
                Return (!INPS)
            }

            Method (ORDY, 0, Serialized)
            {
                Return (OUTS) /* \_SB_.PCI0.LPCB.EC__.OUTS */
            }

            Method (WATI, 0, Serialized)
            {
                Local0 = 0x32
                While ((Local0 && !IRDY ()))
                {
                    Sleep (One)
                    Local0--
                }

                Return (IRDY ())
            }

            Method (WATO, 0, Serialized)
            {
                Local0 = 0x32
                While ((Local0 && !ORDY ()))
                {
                    Sleep (One)
                    Local0--
                }

                Return (ORDY ())
            }

            Method (CLRB, 0, Serialized)
            {
                While (WATO ())
                {
                    Local0 = DAT1 /* \_SB_.PCI0.LPCB.EC__.DAT1 */
                }
            }

            Method (RDEC, 1, Serialized)
            {
                If (WATI ())
                {
                    CMD1 = 0x80
                    If (WATI ())
                    {
                        DAT1 = Arg0
                        If (WATO ())
                        {
                            Return (DAT1) /* \_SB_.PCI0.LPCB.EC__.DAT1 */
                        }
                    }
                }

                Return (Zero)
            }

            Method (WREC, 2, Serialized)
            {
                Noop
            }

            Method (QREC, 0, Serialized)
            {
                Noop
            }

            Method (_QC0, 0, NotSerialized)  // _Qxx: EC Query
            {
                ^SCM0.TDED = 0xC0
                DBG8 = 0xC0
                Notify (SCM0, 0xC0) // Hardware-Specific
            }

            Device (SCM0)
            {
                Name (_HID, "pnp0c14")  // _HID: Hardware ID
                Name (_UID, Zero)  // _UID: Unique ID
                Name (TDVR, 0x14)
                Name (_WDG, Buffer (0xC8)
                {
                    /* 0000 */  0x6A, 0x8D, 0x41, 0x24, 0x79, 0x0A, 0x4C, 0x52,  /* j.A$y.LR */
                    /* 0008 */  0x9A, 0xB1, 0x18, 0xB7, 0x8C, 0xA6, 0x8C, 0xE7,  /* ........ */
                    /* 0010 */  0x41, 0x41, 0x22, 0x01, 0x6B, 0xD5, 0xFB, 0x4A,  /* AA".k..J */
                    /* 0018 */  0x91, 0x9F, 0x49, 0x8F, 0x81, 0xF5, 0x99, 0x5B,  /* ..I....[ */
                    /* 0020 */  0xA7, 0x38, 0x22, 0xAF, 0x41, 0x42, 0x04, 0x01,  /* .8".AB.. */
                    /* 0028 */  0x6C, 0xBA, 0x3C, 0x2D, 0x9C, 0x1C, 0x41, 0x7F,  /* l.<-..A. */
                    /* 0030 */  0xB5, 0x4C, 0xF5, 0xD5, 0xD5, 0x80, 0xD4, 0x82,  /* .L...... */
                    /* 0038 */  0x41, 0x43, 0x03, 0x01, 0x6D, 0x02, 0xBA, 0x40,  /* AC..m..@ */
                    /* 0040 */  0x5D, 0x07, 0x4A, 0xCD, 0x97, 0x10, 0xF7, 0xC5,  /* ].J..... */
                    /* 0048 */  0x73, 0x47, 0xCA, 0xC9, 0x41, 0x44, 0x10, 0x01,  /* sG..AD.. */
                    /* 0050 */  0x6E, 0xCF, 0xBC, 0x8D, 0xB4, 0x9D, 0x46, 0x0E,  /* n.....F. */
                    /* 0058 */  0xA3, 0xF2, 0x99, 0xAF, 0xAA, 0xA7, 0x7A, 0x7A,  /* ......zz */
                    /* 0060 */  0x41, 0x45, 0x0E, 0x01, 0x6F, 0x21, 0x2A, 0xBD,  /* AE..o!*. */
                    /* 0068 */  0xB9, 0x2F, 0x40, 0xA6, 0xB8, 0x07, 0xDD, 0xDB,  /* ./@..... */
                    /* 0070 */  0xAD, 0x65, 0x68, 0x91, 0x41, 0x46, 0x13, 0x01,  /* .eh.AF.. */
                    /* 0078 */  0x7A, 0xEC, 0xC3, 0x1E, 0x9B, 0x1E, 0x4A, 0xE7,  /* z.....J. */
                    /* 0080 */  0x90, 0x26, 0xCF, 0x12, 0x2B, 0x0B, 0xBD, 0x21,  /* .&..+..! */
                    /* 0088 */  0x41, 0x47, 0x12, 0x01, 0x7B, 0x3D, 0x75, 0xA1,  /* AG..{=u. */
                    /* 0090 */  0x21, 0xB6, 0x4A, 0xDE, 0xB4, 0x1A, 0x55, 0x71,  /* !.J...Uq */
                    /* 0098 */  0x6A, 0x0E, 0xCE, 0x7A, 0x41, 0x48, 0x15, 0x01,  /* j..zAH.. */
                    /* 00A0 */  0x7C, 0x3D, 0x75, 0xA1, 0x21, 0xB6, 0x4A, 0xDE,  /* |=u.!.J. */
                    /* 00A8 */  0xB4, 0x1A, 0x55, 0x71, 0x6A, 0x0E, 0xCE, 0x7A,  /* ..Uqj..z */
                    /* 00B0 */  0x41, 0x49, 0x08, 0x01, 0x8A, 0xC3, 0x3C, 0x5B,  /* AI....<[ */
                    /* 00B8 */  0xD9, 0x40, 0x45, 0x72, 0x8A, 0xE6, 0x11, 0x45,  /* .@Er...E */
                    /* 00C0 */  0xB7, 0x51, 0xBE, 0x3F, 0xC0, 0x00, 0x01, 0x09   /* .Q.?.... */
                })
                OperationRegion (EC, EmbeddedControl, Zero, 0x0100)
                Field (EC, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x2B), 
                    TD2B,   8, 
                    TD2C,   8, 
                    T2D0,   1, 
                    T2D1,   4, 
                    T2D5,   3, 
                    TD2E,   8, 
                    TD2F,   8, 
                    TD30,   8, 
                    TD31,   8, 
                    TD32,   8, 
                    TD33,   8, 
                    Offset (0x35), 
                    TD35,   8, 
                    TD36,   8, 
                    Offset (0x38), 
                    TD38,   16, 
                    TD3A,   16, 
                    TD3C,   16, 
                    TD3E,   16, 
                    TD40,   16, 
                    TD42,   16, 
                    TD44,   16, 
                    TD46,   16, 
                    TD48,   16, 
                    TD4A,   16, 
                    TD4C,   16, 
                    TD4E,   16, 
                    TD50,   16, 
                    TD52,   16, 
                    TD54,   16, 
                    TD56,   16, 
                    TD58,   16, 
                    TD5A,   16, 
                    TD5C,   16, 
                    TD5E,   16, 
                    TD60,   16, 
                    TD62,   16, 
                    TD64,   16, 
                    TD66,   16, 
                    TD68,   8, 
                    TD69,   8, 
                    TD6A,   8, 
                    TD6B,   8, 
                    TD6C,   8, 
                    TD6D,   8, 
                    TD6E,   8, 
                    TD6F,   8, 
                    TD70,   8, 
                    TD71,   8, 
                    TD72,   8, 
                    TD73,   8, 
                    TD74,   8, 
                    TD75,   8, 
                    TD76,   8, 
                    TD77,   8, 
                    TD78,   8, 
                    TD79,   8, 
                    Offset (0x80), 
                    TD80,   8, 
                    TD81,   8, 
                    TD82,   8, 
                    TD83,   8, 
                    TD84,   8, 
                    TD85,   8, 
                    TD86,   8, 
                    TD87,   8, 
                    TD88,   8, 
                    TD89,   8, 
                    TD8A,   8, 
                    TD8B,   8, 
                    TD8C,   8, 
                    TD8D,   8, 
                    TD8E,   8, 
                    TD8F,   8, 
                    TD90,   8, 
                    Offset (0xA0), 
                    TDA0,   8, 
                    TDA1,   8, 
                    TDA2,   8, 
                    TDA3,   8, 
                    TDA4,   8, 
                    TDA5,   8, 
                    TDA6,   8, 
                    TDA7,   8, 
                    TDA8,   8, 
                    TDA9,   8, 
                    TDAA,   8, 
                    TDAB,   8, 
                    TDAC,   8, 
                    TDAD,   8, 
                    TDAE,   8, 
                    TDAF,   8, 
                    TDB0,   8, 
                    TDB1,   8, 
                    TDB2,   8, 
                    TDB3,   8, 
                    TDB4,   8, 
                    TDB5,   8, 
                    TDB6,   8, 
                    TDB7,   8, 
                    TDB8,   8, 
                    TDB9,   8, 
                    TDBA,   8, 
                    TDBB,   8, 
                    TDBE,   8, 
                    TDBF,   8, 
                    Offset (0xC8), 
                    TDC8,   8, 
                    TDC9,   8, 
                    TDCA,   8, 
                    TDCB,   8, 
                    TDCC,   8, 
                    TDCD,   8, 
                    TDCE,   8, 
                    TDCF,   8, 
                    Offset (0xE0), 
                    TDE0,   8, 
                    Offset (0xE3), 
                    TDE3,   8, 
                    TE40,   3, 
                    TE43,   5, 
                    TDE5,   8, 
                    TDE6,   8, 
                    TDE7,   8, 
                    TDE8,   8, 
                    TDE9,   8, 
                    Offset (0xED), 
                    TDED,   8, 
                    TDEE,   8, 
                    Offset (0xF0), 
                    TDF0,   8, 
                    TDF1,   8, 
                    TDF2,   8, 
                    TDF3,   8, 
                    TDF4,   8, 
                    TDF5,   8, 
                    TDF6,   8, 
                    TDF7,   8, 
                    TDF8,   8, 
                    TDF9,   8, 
                    TDFA,   8, 
                    TDFB,   8, 
                    TDFC,   8, 
                    TDFD,   8, 
                    TDFE,   8, 
                    TDFF,   8
                }

                Method (WQAA, 1, NotSerialized)
                {
                    If ((Arg0 == Zero))
                    {
                        Local0 = T2D0 /* \_SB_.PCI0.LPCB.EC__.SCM0.T2D0 */
                        Return (Local0)
                    }

                    If ((Arg0 == One))
                    {
                        Local0 = T2D1 /* \_SB_.PCI0.LPCB.EC__.SCM0.T2D1 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x02))
                    {
                        Local0 = TDEE /* \_SB_.PCI0.LPCB.EC__.SCM0.TDEE */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x03))
                    {
                        Local0 = T2D5 /* \_SB_.PCI0.LPCB.EC__.SCM0.T2D5 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x04))
                    {
                        Local0 = TDE5 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDE5 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x05))
                    {
                        Local0 = TDE6 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDE6 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x06))
                    {
                        Local0 = TDA0 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA0 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x07))
                    {
                        Local0 = TDA1 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA1 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x08))
                    {
                        Local0 = TDA2 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA2 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x09))
                    {
                        Local0 = TDA3 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA3 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0A))
                    {
                        Local0 = TDA4 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA4 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0B))
                    {
                        Local0 = TDA5 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA5 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0C))
                    {
                        Local0 = TDA6 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA6 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0D))
                    {
                        Local0 = TDA7 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA7 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0E))
                    {
                        Local0 = TDA8 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA8 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0F))
                    {
                        Local0 = TDA9 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA9 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x10))
                    {
                        Local0 = TDAA /* \_SB_.PCI0.LPCB.EC__.SCM0.TDAA */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x11))
                    {
                        Local0 = TDAB /* \_SB_.PCI0.LPCB.EC__.SCM0.TDAB */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x12))
                    {
                        Local0 = TDAC /* \_SB_.PCI0.LPCB.EC__.SCM0.TDAC */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x13))
                    {
                        Local0 = TDAD /* \_SB_.PCI0.LPCB.EC__.SCM0.TDAD */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x14))
                    {
                        Local0 = TDAE /* \_SB_.PCI0.LPCB.EC__.SCM0.TDAE */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x15))
                    {
                        Local0 = TDAF /* \_SB_.PCI0.LPCB.EC__.SCM0.TDAF */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x16))
                    {
                        Local0 = TDB0 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB0 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x17))
                    {
                        Local0 = TDB1 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB1 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x18))
                    {
                        Local0 = TDB2 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB2 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x19))
                    {
                        Local0 = TDB3 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB3 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x1A))
                    {
                        Local0 = TDB4 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB4 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x1B))
                    {
                        Local0 = TDB5 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB5 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x1C))
                    {
                        Local0 = TDB6 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB6 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x1D))
                    {
                        Local0 = TDB7 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB7 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x1E))
                    {
                        Local0 = TDB8 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB8 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x1F))
                    {
                        Local0 = TDB9 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB9 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x20))
                    {
                        Local0 = TDBA /* \_SB_.PCI0.LPCB.EC__.SCM0.TDBA */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x21))
                    {
                        Local0 = TDBB /* \_SB_.PCI0.LPCB.EC__.SCM0.TDBB */
                        Return (Local0)
                    }
                }

                Method (WQAB, 1, NotSerialized)
                {
                    If ((Arg0 == Zero))
                    {
                        Local1 = TD2E /* \_SB_.PCI0.LPCB.EC__.SCM0.TD2E */
                        Return (Local1)
                    }

                    If ((Arg0 == One))
                    {
                        Local1 = TD2F /* \_SB_.PCI0.LPCB.EC__.SCM0.TD2F */
                        Return (Local1)
                    }

                    If ((Arg0 == 0x02))
                    {
                        Local1 = TD2B /* \_SB_.PCI0.LPCB.EC__.SCM0.TD2B */
                        Return (Local1)
                    }

                    If ((Arg0 == 0x03))
                    {
                        Local1 = TD2C /* \_SB_.PCI0.LPCB.EC__.SCM0.TD2C */
                        Return (Local1)
                    }
                }

                Method (WQAC, 1, NotSerialized)
                {
                    If ((Arg0 == Zero))
                    {
                        Local2 = TD30 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD30 */
                        Return (Local2)
                    }

                    If ((Arg0 == One))
                    {
                        Local2 = TDBE /* \_SB_.PCI0.LPCB.EC__.SCM0.TDBE */
                        Return (Local2)
                    }

                    If ((Arg0 == 0x02))
                    {
                        Local2 = TDBF /* \_SB_.PCI0.LPCB.EC__.SCM0.TDBF */
                        Return (Local2)
                    }
                }

                Method (WQAD, 1, NotSerialized)
                {
                    If ((Arg0 == Zero))
                    {
                        Local0 = TD31 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD31 */
                        Return (Local0)
                    }

                    If ((Arg0 == One))
                    {
                        Local0 = TD38 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD38 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x02))
                    {
                        Local0 = TD3A /* \_SB_.PCI0.LPCB.EC__.SCM0.TD3A */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x03))
                    {
                        Local0 = TD3C /* \_SB_.PCI0.LPCB.EC__.SCM0.TD3C */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x04))
                    {
                        Local0 = TD3E /* \_SB_.PCI0.LPCB.EC__.SCM0.TD3E */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x05))
                    {
                        Local0 = TD40 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD40 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x06))
                    {
                        Local0 = TD42 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD42 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x07))
                    {
                        Local0 = TD44 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD44 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x08))
                    {
                        Local0 = TD46 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD46 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x09))
                    {
                        Local0 = TD48 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD48 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0A))
                    {
                        Local0 = TD4A /* \_SB_.PCI0.LPCB.EC__.SCM0.TD4A */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0B))
                    {
                        Local0 = TD4C /* \_SB_.PCI0.LPCB.EC__.SCM0.TD4C */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0C))
                    {
                        Local0 = TDE8 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDE8 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0D))
                    {
                        Local0 = TD35 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD35 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0E))
                    {
                        Local0 = TD36 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD36 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0F))
                    {
                        Local0 = TD4E /* \_SB_.PCI0.LPCB.EC__.SCM0.TD4E */
                        Return (Local0)
                    }
                }

                Method (WQAE, 1, NotSerialized)
                {
                    If ((Arg0 == Zero))
                    {
                        Local0 = TD32 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD32 */
                        Return (Local0)
                    }

                    If ((Arg0 == One))
                    {
                        Local0 = TD50 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD50 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x02))
                    {
                        Local0 = TD52 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD52 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x03))
                    {
                        Local0 = TD54 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD54 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x04))
                    {
                        Local0 = TD56 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD56 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x05))
                    {
                        Local0 = TD58 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD58 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x06))
                    {
                        Local0 = TD5A /* \_SB_.PCI0.LPCB.EC__.SCM0.TD5A */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x07))
                    {
                        Local0 = TD5C /* \_SB_.PCI0.LPCB.EC__.SCM0.TD5C */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x08))
                    {
                        Local0 = TD5E /* \_SB_.PCI0.LPCB.EC__.SCM0.TD5E */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x09))
                    {
                        Local0 = TD60 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD60 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0A))
                    {
                        Local0 = TD62 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD62 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0B))
                    {
                        Local0 = TD64 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD64 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0C))
                    {
                        Local0 = TDE9 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDE9 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0D))
                    {
                        Local0 = TD66 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD66 */
                        Return (Local0)
                    }
                }

                Method (WQAF, 1, NotSerialized)
                {
                    If ((Arg0 == Zero))
                    {
                        Local0 = TD33 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD33 */
                        Return (Local0)
                    }

                    If ((Arg0 == One))
                    {
                        Local0 = TD68 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD68 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x02))
                    {
                        Local0 = TD71 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD71 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x03))
                    {
                        Local0 = TD70 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD70 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x04))
                    {
                        Local0 = TD69 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD69 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x05))
                    {
                        Local0 = TD6A /* \_SB_.PCI0.LPCB.EC__.SCM0.TD6A */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x06))
                    {
                        Local0 = TD6B /* \_SB_.PCI0.LPCB.EC__.SCM0.TD6B */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x07))
                    {
                        Local0 = TD6C /* \_SB_.PCI0.LPCB.EC__.SCM0.TD6C */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x08))
                    {
                        Local0 = TD6D /* \_SB_.PCI0.LPCB.EC__.SCM0.TD6D */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x09))
                    {
                        Local0 = TD6E /* \_SB_.PCI0.LPCB.EC__.SCM0.TD6E */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0A))
                    {
                        Local0 = TD6F /* \_SB_.PCI0.LPCB.EC__.SCM0.TD6F */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0B))
                    {
                        Local0 = TD72 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD72 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0C))
                    {
                        Local0 = TD73 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD73 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0D))
                    {
                        Local0 = TD74 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD74 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0E))
                    {
                        Local0 = TD75 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD75 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0F))
                    {
                        Local0 = TD76 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD76 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x10))
                    {
                        Local0 = TD77 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD77 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x11))
                    {
                        Local0 = TD78 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD78 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x12))
                    {
                        Local0 = TD79 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD79 */
                        Return (Local0)
                    }
                }

                Method (WQAG, 1, NotSerialized)
                {
                    If ((Arg0 == Zero))
                    {
                        Local0 = TD33 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD33 */
                        Return (Local0)
                    }

                    If ((Arg0 == One))
                    {
                        Local0 = TD80 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD80 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x02))
                    {
                        Local0 = TD89 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD89 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x03))
                    {
                        Local0 = TD88 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD88 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x04))
                    {
                        Local0 = TD81 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD81 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x05))
                    {
                        Local0 = TD82 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD82 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x06))
                    {
                        Local0 = TD83 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD83 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x07))
                    {
                        Local0 = TD84 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD84 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x08))
                    {
                        Local0 = TD85 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD85 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x09))
                    {
                        Local0 = TD86 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD86 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0A))
                    {
                        Local0 = TD87 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD87 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0B))
                    {
                        Local0 = TD8A /* \_SB_.PCI0.LPCB.EC__.SCM0.TD8A */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0C))
                    {
                        Local0 = TD8B /* \_SB_.PCI0.LPCB.EC__.SCM0.TD8B */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0D))
                    {
                        Local0 = TD8C /* \_SB_.PCI0.LPCB.EC__.SCM0.TD8C */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0E))
                    {
                        Local0 = TD8D /* \_SB_.PCI0.LPCB.EC__.SCM0.TD8D */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0F))
                    {
                        Local0 = TD8E /* \_SB_.PCI0.LPCB.EC__.SCM0.TD8E */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x10))
                    {
                        Local0 = TD8F /* \_SB_.PCI0.LPCB.EC__.SCM0.TD8F */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x11))
                    {
                        Local0 = TD90 /* \_SB_.PCI0.LPCB.EC__.SCM0.TD90 */
                        Return (Local0)
                    }
                }

                Method (WQAH, 1, NotSerialized)
                {
                    If ((Arg0 == Zero))
                    {
                        Local0 = TE40 /* \_SB_.PCI0.LPCB.EC__.SCM0.TE40 */
                        Return (Local0)
                    }

                    If ((Arg0 == One))
                    {
                        Local0 = TE43 /* \_SB_.PCI0.LPCB.EC__.SCM0.TE43 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x02))
                    {
                        Local0 = TDE7 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDE7 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x03))
                    {
                        Local0 = TDF0 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF0 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x04))
                    {
                        Local0 = TDF1 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF1 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x05))
                    {
                        Local0 = TDFE /* \_SB_.PCI0.LPCB.EC__.SCM0.TDFE */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x06))
                    {
                        Local0 = TDFF /* \_SB_.PCI0.LPCB.EC__.SCM0.TDFF */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x07))
                    {
                        Local0 = TDF2 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF2 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x08))
                    {
                        Local0 = TDF3 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF3 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x09))
                    {
                        Local0 = TDF4 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF4 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0A))
                    {
                        Local0 = TDF5 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF5 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0B))
                    {
                        Local0 = TDF6 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF6 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0C))
                    {
                        Local0 = TDF7 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF7 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0D))
                    {
                        Local0 = TDF8 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF8 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0E))
                    {
                        Local0 = TDF9 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF9 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x0F))
                    {
                        Local0 = TDFA /* \_SB_.PCI0.LPCB.EC__.SCM0.TDFA */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x10))
                    {
                        Local0 = TDFB /* \_SB_.PCI0.LPCB.EC__.SCM0.TDFB */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x11))
                    {
                        Local0 = TDFC /* \_SB_.PCI0.LPCB.EC__.SCM0.TDFC */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x12))
                    {
                        Local0 = TDFD /* \_SB_.PCI0.LPCB.EC__.SCM0.TDFD */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x13))
                    {
                        Local0 = TDE0 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDE0 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x14))
                    {
                        Local0 = TDE3 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDE3 */
                        Return (Local0)
                    }
                }

                Method (WQAI, 1, NotSerialized)
                {
                    If ((Arg0 == Zero))
                    {
                        Local0 = TDCF /* \_SB_.PCI0.LPCB.EC__.SCM0.TDCF */
                        Return (Local0)
                    }

                    If ((Arg0 == One))
                    {
                        TDCE = TDVR /* \_SB_.PCI0.LPCB.EC__.SCM0.TDVR */
                        Local0 = TDCE /* \_SB_.PCI0.LPCB.EC__.SCM0.TDCE */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x02))
                    {
                        Local0 = TDCD /* \_SB_.PCI0.LPCB.EC__.SCM0.TDCD */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x03))
                    {
                        Local0 = TDCC /* \_SB_.PCI0.LPCB.EC__.SCM0.TDCC */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x04))
                    {
                        Local0 = TDCB /* \_SB_.PCI0.LPCB.EC__.SCM0.TDCB */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x05))
                    {
                        Local0 = TDCA /* \_SB_.PCI0.LPCB.EC__.SCM0.TDCA */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x06))
                    {
                        Local0 = TDC9 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDC9 */
                        Return (Local0)
                    }

                    If ((Arg0 == 0x07))
                    {
                        Local0 = TDC8 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDC8 */
                        Return (Local0)
                    }
                }

                Method (WSAA, 2, NotSerialized)
                {
                    If ((Arg0 == Zero))
                    {
                        T2D0 = Arg1
                        Return (T2D0) /* \_SB_.PCI0.LPCB.EC__.SCM0.T2D0 */
                    }

                    If ((Arg0 == One))
                    {
                        T2D1 = Arg1
                        Return (T2D1) /* \_SB_.PCI0.LPCB.EC__.SCM0.T2D1 */
                    }

                    If ((Arg0 == 0x02))
                    {
                        TDEE = Arg1
                        Return (TDEE) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDEE */
                    }

                    If ((Arg0 == 0x03))
                    {
                        T2D5 = Arg1
                        Return (T2D5) /* \_SB_.PCI0.LPCB.EC__.SCM0.T2D5 */
                    }

                    If ((Arg0 == 0x04))
                    {
                        TDE5 = Arg1
                        Return (TDE5) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDE5 */
                    }

                    If ((Arg0 == 0x05))
                    {
                        TDE6 = Arg1
                        Return (TDE6) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDE6 */
                    }

                    If ((Arg0 == 0x06))
                    {
                        TDA0 = Arg1
                        Return (TDA0) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA0 */
                    }

                    If ((Arg0 == 0x07))
                    {
                        TDA1 = Arg1
                        Return (TDA1) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA1 */
                    }

                    If ((Arg0 == 0x08))
                    {
                        TDA2 = Arg1
                        Return (TDA2) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA2 */
                    }

                    If ((Arg0 == 0x09))
                    {
                        TDA3 = Arg1
                        Return (TDA3) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA3 */
                    }

                    If ((Arg0 == 0x0A))
                    {
                        TDA4 = Arg1
                        Return (TDA4) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA4 */
                    }

                    If ((Arg0 == 0x0B))
                    {
                        TDA5 = Arg1
                        Return (TDA5) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA5 */
                    }

                    If ((Arg0 == 0x0C))
                    {
                        TDA6 = Arg1
                        Return (TDA6) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA6 */
                    }

                    If ((Arg0 == 0x0D))
                    {
                        TDA7 = Arg1
                        Return (TDA7) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA7 */
                    }

                    If ((Arg0 == 0x0E))
                    {
                        TDA8 = Arg1
                        Return (TDA8) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA8 */
                    }

                    If ((Arg0 == 0x0F))
                    {
                        TDA9 = Arg1
                        Return (TDA9) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDA9 */
                    }

                    If ((Arg0 == 0x10))
                    {
                        TDAA = Arg1
                        Return (TDAA) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDAA */
                    }

                    If ((Arg0 == 0x11))
                    {
                        TDAB = Arg1
                        Return (TDAB) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDAB */
                    }

                    If ((Arg0 == 0x12))
                    {
                        TDAC = Arg1
                        Return (TDAC) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDAC */
                    }

                    If ((Arg0 == 0x13))
                    {
                        TDAD = Arg1
                        Return (TDAD) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDAD */
                    }

                    If ((Arg0 == 0x14))
                    {
                        TDAE = Arg1
                        Return (TDAE) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDAE */
                    }

                    If ((Arg0 == 0x15))
                    {
                        TDAF = Arg1
                        Return (TDAF) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDAF */
                    }

                    If ((Arg0 == 0x16))
                    {
                        TDB0 = Arg1
                        Return (TDB0) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB0 */
                    }

                    If ((Arg0 == 0x17))
                    {
                        TDB1 = Arg1
                        Return (TDB1) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB1 */
                    }

                    If ((Arg0 == 0x18))
                    {
                        TDB2 = Arg1
                        Return (TDB2) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB2 */
                    }

                    If ((Arg0 == 0x19))
                    {
                        TDB3 = Arg1
                        Return (TDB3) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB3 */
                    }

                    If ((Arg0 == 0x1A))
                    {
                        TDB4 = Arg1
                        Return (TDB4) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB4 */
                    }

                    If ((Arg0 == 0x1B))
                    {
                        TDB5 = Arg1
                        Return (TDB5) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB5 */
                    }

                    If ((Arg0 == 0x1C))
                    {
                        TDB6 = Arg1
                        Return (TDB6) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB6 */
                    }

                    If ((Arg0 == 0x1D))
                    {
                        TDB7 = Arg1
                        Return (TDB7) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB7 */
                    }

                    If ((Arg0 == 0x1E))
                    {
                        TDB8 = Arg1
                        Return (TDB8) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB8 */
                    }

                    If ((Arg0 == 0x1F))
                    {
                        TDB9 = Arg1
                        Return (TDB9) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDB9 */
                    }

                    If ((Arg0 == 0x20))
                    {
                        TDBA = Arg1
                        Return (TDBA) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDBA */
                    }

                    If ((Arg0 == 0x21))
                    {
                        TDBB = Arg1
                        Return (TDBB) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDBB */
                    }
                }

                Method (WSAB, 2, NotSerialized)
                {
                    If ((Arg0 == Zero))
                    {
                        TD2E = Arg1
                        Return (TD2E) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD2E */
                    }

                    If ((Arg0 == One))
                    {
                        TD2F = Arg1
                        Return (TD2F) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD2F */
                    }

                    If ((Arg0 == 0x02))
                    {
                        TD2B = Arg1
                        Return (TD2B) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD2B */
                    }

                    If ((Arg0 == 0x03))
                    {
                        TD2C = Arg1
                        Return (TD2C) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD2C */
                    }
                }

                Method (WSAC, 2, NotSerialized)
                {
                    If ((Arg0 == Zero))
                    {
                        TD30 = Arg1
                        Return (TD30) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD30 */
                    }

                    If ((Arg0 == One))
                    {
                        TDBE = Arg1
                        Return (TDBE) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDBE */
                    }

                    If ((Arg0 == 0x02))
                    {
                        TDBF = Arg1
                        Return (TDBF) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDBF */
                    }
                }

                Method (WSAD, 2, NotSerialized)
                {
                    If ((Arg0 == Zero))
                    {
                        TD31 = Arg1
                        Return (TD31) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD31 */
                    }

                    If ((Arg0 == One))
                    {
                        TD38 = Arg1
                        Return (TD38) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD38 */
                    }

                    If ((Arg0 == 0x02))
                    {
                        TD3A = Arg1
                        Return (TD3A) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD3A */
                    }

                    If ((Arg0 == 0x03))
                    {
                        TD3C = Arg1
                        Return (TD3C) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD3C */
                    }

                    If ((Arg0 == 0x04))
                    {
                        TD3E = Arg1
                        Return (TD3E) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD3E */
                    }

                    If ((Arg0 == 0x05))
                    {
                        TD40 = Arg1
                        Return (TD40) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD40 */
                    }

                    If ((Arg0 == 0x06))
                    {
                        TD42 = Arg1
                        Return (TD42) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD42 */
                    }

                    If ((Arg0 == 0x07))
                    {
                        TD44 = Arg1
                        Return (TD44) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD44 */
                    }

                    If ((Arg0 == 0x08))
                    {
                        TD46 = Arg1
                        Return (TD46) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD46 */
                    }

                    If ((Arg0 == 0x09))
                    {
                        TD48 = Arg1
                        Return (TD48) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD48 */
                    }

                    If ((Arg0 == 0x0A))
                    {
                        TD4A = Arg1
                        Return (TD4A) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD4A */
                    }

                    If ((Arg0 == 0x0B))
                    {
                        TD4C = Arg1
                        Return (TD4C) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD4C */
                    }

                    If ((Arg0 == 0x0C))
                    {
                        TDE8 = Arg1
                        Return (TDE8) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDE8 */
                    }

                    If ((Arg0 == 0x0D))
                    {
                        TD35 = Arg1
                        Return (TD35) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD35 */
                    }

                    If ((Arg0 == 0x0E))
                    {
                        TD36 = Arg1
                        Return (TD36) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD36 */
                    }

                    If ((Arg0 == 0x0F))
                    {
                        TD4E = Arg1
                        Return (TD4E) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD4E */
                    }
                }

                Method (WSAE, 2, NotSerialized)
                {
                    If ((Arg0 == Zero))
                    {
                        TD32 = Arg1
                        Return (TD32) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD32 */
                    }

                    If ((Arg0 == One))
                    {
                        TD50 = Arg1
                        Return (TD50) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD50 */
                    }

                    If ((Arg0 == 0x02))
                    {
                        TD52 = Arg1
                        Return (TD52) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD52 */
                    }

                    If ((Arg0 == 0x03))
                    {
                        TD54 = Arg1
                        Return (TD54) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD54 */
                    }

                    If ((Arg0 == 0x04))
                    {
                        TD56 = Arg1
                        Return (TD56) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD56 */
                    }

                    If ((Arg0 == 0x05))
                    {
                        TD58 = Arg1
                        Return (TD58) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD58 */
                    }

                    If ((Arg0 == 0x06))
                    {
                        TD5A = Arg1
                        Return (TD5A) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD5A */
                    }

                    If ((Arg0 == 0x07))
                    {
                        TD5C = Arg1
                        Return (TD5C) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD5C */
                    }

                    If ((Arg0 == 0x08))
                    {
                        TD5E = Arg1
                        Return (TD5E) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD5E */
                    }

                    If ((Arg0 == 0x09))
                    {
                        TD60 = Arg1
                        Return (TD60) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD60 */
                    }

                    If ((Arg0 == 0x0A))
                    {
                        TD62 = Arg1
                        Return (TD62) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD62 */
                    }

                    If ((Arg0 == 0x0B))
                    {
                        TD64 = Arg1
                        Return (TD64) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD64 */
                    }

                    If ((Arg0 == 0x0C))
                    {
                        TDE9 = Arg1
                        Return (TDE9) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDE9 */
                    }

                    If ((Arg0 == 0x0D))
                    {
                        TD66 = Arg1
                        Return (TD66) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD66 */
                    }
                }

                Method (WSAF, 2, NotSerialized)
                {
                    If ((Arg0 == Zero))
                    {
                        TD33 = Arg1
                        Return (TD33) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD33 */
                    }

                    If ((Arg0 == One))
                    {
                        TD68 = Arg1
                        Return (TD68) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD68 */
                    }

                    If ((Arg0 == 0x02))
                    {
                        TD71 = Arg1
                        Return (TD71) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD71 */
                    }

                    If ((Arg0 == 0x03))
                    {
                        TD70 = Arg1
                        Return (TD70) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD70 */
                    }

                    If ((Arg0 == 0x04))
                    {
                        TD69 = Arg1
                        Return (TD69) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD69 */
                    }

                    If ((Arg0 == 0x05))
                    {
                        TD6A = Arg1
                        Return (TD6A) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD6A */
                    }

                    If ((Arg0 == 0x06))
                    {
                        TD6B = Arg1
                        Return (TD6B) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD6B */
                    }

                    If ((Arg0 == 0x07))
                    {
                        TD6C = Arg1
                        Return (TD6C) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD6C */
                    }

                    If ((Arg0 == 0x08))
                    {
                        TD6D = Arg1
                        Return (TD6D) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD6D */
                    }

                    If ((Arg0 == 0x09))
                    {
                        TD6E = Arg1
                        Return (TD6E) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD6E */
                    }

                    If ((Arg0 == 0x0A))
                    {
                        TD6F = Arg1
                        Return (TD6F) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD6F */
                    }

                    If ((Arg0 == 0x0B))
                    {
                        TD72 = Arg1
                        Return (TD72) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD72 */
                    }

                    If ((Arg0 == 0x0C))
                    {
                        TD73 = Arg1
                        Return (TD73) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD73 */
                    }

                    If ((Arg0 == 0x0D))
                    {
                        TD74 = Arg1
                        Return (TD74) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD74 */
                    }

                    If ((Arg0 == 0x0E))
                    {
                        TD75 = Arg1
                        Return (TD75) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD75 */
                    }

                    If ((Arg0 == 0x0F))
                    {
                        TD76 = Arg1
                        Return (TD76) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD76 */
                    }

                    If ((Arg0 == 0x10))
                    {
                        TD77 = Arg1
                        Return (TD77) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD77 */
                    }

                    If ((Arg0 == 0x11))
                    {
                        TD78 = Arg1
                        Return (TD78) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD78 */
                    }

                    If ((Arg0 == 0x12))
                    {
                        TD79 = Arg1
                        Return (TD79) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD79 */
                    }
                }

                Method (WSAG, 2, NotSerialized)
                {
                    If ((Arg0 == Zero))
                    {
                        TD33 = Arg1
                        Return (TD33) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD33 */
                    }

                    If ((Arg0 == One))
                    {
                        TD80 = Arg1
                        Return (TD80) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD80 */
                    }

                    If ((Arg0 == 0x02))
                    {
                        TD89 = Arg1
                        Return (TD89) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD89 */
                    }

                    If ((Arg0 == 0x03))
                    {
                        TD88 = Arg1
                        Return (TD88) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD88 */
                    }

                    If ((Arg0 == 0x04))
                    {
                        TD81 = Arg1
                        Return (TD81) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD81 */
                    }

                    If ((Arg0 == 0x05))
                    {
                        TD82 = Arg1
                        Return (TD82) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD82 */
                    }

                    If ((Arg0 == 0x06))
                    {
                        TD83 = Arg1
                        Return (TD83) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD83 */
                    }

                    If ((Arg0 == 0x07))
                    {
                        TD84 = Arg1
                        Return (TD84) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD84 */
                    }

                    If ((Arg0 == 0x08))
                    {
                        TD85 = Arg1
                        Return (TD85) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD85 */
                    }

                    If ((Arg0 == 0x09))
                    {
                        TD86 = Arg1
                        Return (TD86) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD86 */
                    }

                    If ((Arg0 == 0x0A))
                    {
                        TD87 = Arg1
                        Return (TD87) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD87 */
                    }

                    If ((Arg0 == 0x0B))
                    {
                        TD8A = Arg1
                        Return (TD8A) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD8A */
                    }

                    If ((Arg0 == 0x0C))
                    {
                        TD8B = Arg1
                        Return (TD8B) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD8B */
                    }

                    If ((Arg0 == 0x0D))
                    {
                        TD8C = Arg1
                        Return (TD8C) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD8C */
                    }

                    If ((Arg0 == 0x0E))
                    {
                        TD8D = Arg1
                        Return (TD8D) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD8D */
                    }

                    If ((Arg0 == 0x0F))
                    {
                        TD8E = Arg1
                        Return (TD8E) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD8E */
                    }

                    If ((Arg0 == 0x10))
                    {
                        TD8F = Arg1
                        Return (TD8F) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD8F */
                    }

                    If ((Arg0 == 0x11))
                    {
                        TD90 = Arg1
                        Return (TD90) /* \_SB_.PCI0.LPCB.EC__.SCM0.TD90 */
                    }
                }

                Method (WSAH, 2, NotSerialized)
                {
                    If ((Arg0 == Zero))
                    {
                        TE40 = Arg1
                        Return (TE40) /* \_SB_.PCI0.LPCB.EC__.SCM0.TE40 */
                    }

                    If ((Arg0 == One))
                    {
                        TE43 = Arg1
                        Return (TE43) /* \_SB_.PCI0.LPCB.EC__.SCM0.TE43 */
                    }

                    If ((Arg0 == 0x02))
                    {
                        TDE7 = Arg1
                        Return (TDE7) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDE7 */
                    }

                    If ((Arg0 == 0x03))
                    {
                        TDF0 = Arg1
                        Return (TDF0) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF0 */
                    }

                    If ((Arg0 == 0x04))
                    {
                        TDF1 = Arg1
                        Return (TDF1) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF1 */
                    }

                    If ((Arg0 == 0x05))
                    {
                        TDFE = Arg1
                        Return (TDFE) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDFE */
                    }

                    If ((Arg0 == 0x06))
                    {
                        TDFF = Arg1
                        Return (TDFF) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDFF */
                    }

                    If ((Arg0 == 0x07))
                    {
                        TDF2 = Arg1
                        Return (TDF2) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF2 */
                    }

                    If ((Arg0 == 0x08))
                    {
                        TDF3 = Arg1
                        Return (TDF3) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF3 */
                    }

                    If ((Arg0 == 0x09))
                    {
                        TDF4 = Arg1
                        Return (TDF4) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF4 */
                    }

                    If ((Arg0 == 0x0A))
                    {
                        TDF5 = Arg1
                        Return (TDF5) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF5 */
                    }

                    If ((Arg0 == 0x0B))
                    {
                        TDF6 = Arg1
                        Return (TDF6) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF6 */
                    }

                    If ((Arg0 == 0x0C))
                    {
                        TDF7 = Arg1
                        Return (TDF7) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF7 */
                    }

                    If ((Arg0 == 0x0D))
                    {
                        TDF8 = Arg1
                        Return (TDF8) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF8 */
                    }

                    If ((Arg0 == 0x0E))
                    {
                        TDF9 = Arg1
                        Return (TDF9) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF9 */
                    }

                    If ((Arg0 == 0x0F))
                    {
                        TDFA = Arg1
                        Return (TDFA) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDFA */
                    }

                    If ((Arg0 == 0x10))
                    {
                        TDFB = Arg1
                        Return (TDFB) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDFB */
                    }

                    If ((Arg0 == 0x11))
                    {
                        TDFC = Arg1
                        Return (TDFC) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDFC */
                    }

                    If ((Arg0 == 0x12))
                    {
                        TDFD = Arg1
                        Return (TDFD) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDFD */
                    }

                    If ((Arg0 == 0x13))
                    {
                        TDE0 = Arg1
                        Return (TDE0) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDE0 */
                    }

                    If ((Arg0 == 0x14))
                    {
                        TDE3 = Arg1
                        Return (TDE3) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDE3 */
                    }
                }

                Method (WSAI, 2, NotSerialized)
                {
                    If ((Arg0 == Zero))
                    {
                        TDCF = Arg1
                        Return (TDCF) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDCF */
                    }

                    If ((Arg0 == One))
                    {
                        TDCE = Arg1
                        Return (TDCE) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDCE */
                    }

                    If ((Arg0 == 0x02))
                    {
                        TDCD = Arg1
                        Return (TDCD) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDCD */
                    }

                    If ((Arg0 == 0x03))
                    {
                        TDCC = Arg1
                        Return (TDCC) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDCC */
                    }

                    If ((Arg0 == 0x04))
                    {
                        TDCB = Arg1
                        Return (TDCB) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDCB */
                    }

                    If ((Arg0 == 0x05))
                    {
                        TDCA = Arg1
                        Return (TDCA) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDCA */
                    }

                    If ((Arg0 == 0x06))
                    {
                        TDC9 = Arg1
                        Return (TDC9) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDC9 */
                    }

                    If ((Arg0 == 0x07))
                    {
                        TDC8 = Arg1
                        Return (TDC8) /* \_SB_.PCI0.LPCB.EC__.SCM0.TDC8 */
                    }
                }

                Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
                {
                    If ((Arg0 == 0xC0))
                    {
                        Name (EVRT, Buffer (0x02)
                        {
                             0x00, 0x00                                       /* .. */
                        })
                        Name (TMPB, Zero)
                        TMPB = TDEE /* \_SB_.PCI0.LPCB.EC__.SCM0.TDEE */
                        Index (EVRT, Zero) = TMPB /* \_SB_.PCI0.LPCB.EC__.SCM0._WED.TMPB */
                        If ((TMPB == 0x08))
                        {
                            Index (EVRT, One) = TE43 /* \_SB_.PCI0.LPCB.EC__.SCM0.TE43 */
                        }

                        If ((TMPB == 0x56))
                        {
                            Index (EVRT, One) = TD2E /* \_SB_.PCI0.LPCB.EC__.SCM0.TD2E */
                        }

                        If ((TMPB == 0x57))
                        {
                            Index (EVRT, One) = TD2E /* \_SB_.PCI0.LPCB.EC__.SCM0.TD2E */
                        }

                        If ((TMPB == 0x5F))
                        {
                            Index (EVRT, One) = TD2E /* \_SB_.PCI0.LPCB.EC__.SCM0.TD2E */
                        }

                        If ((TMPB == 0x60))
                        {
                            Index (EVRT, One) = TE40 /* \_SB_.PCI0.LPCB.EC__.SCM0.TE40 */
                        }

                        If ((TMPB == 0x62))
                        {
                            Index (EVRT, One) = TDF1 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF1 */
                        }

                        If ((TMPB == 0x63))
                        {
                            Index (EVRT, One) = TDF1 /* \_SB_.PCI0.LPCB.EC__.SCM0.TDF1 */
                        }

                        If ((TMPB == 0x73))
                        {
                            Index (EVRT, One) = TE43 /* \_SB_.PCI0.LPCB.EC__.SCM0.TE43 */
                        }

                        If ((TMPB == 0x79))
                        {
                            Index (EVRT, One) = TE43 /* \_SB_.PCI0.LPCB.EC__.SCM0.TE43 */
                        }

                        If ((TMPB == 0x7B))
                        {
                            Index (EVRT, One) = TD2E /* \_SB_.PCI0.LPCB.EC__.SCM0.TD2E */
                        }

                        If ((TMPB == 0x84))
                        {
                            Index (EVRT, One) = TD2E /* \_SB_.PCI0.LPCB.EC__.SCM0.TD2E */
                        }

                        If ((TMPB == 0x02))
                        {
                            Index (EVRT, One) = TE43 /* \_SB_.PCI0.LPCB.EC__.SCM0.TE43 */
                        }

                        TDEE = Zero
                        Return (EVRT) /* \_SB_.PCI0.LPCB.EC__.SCM0._WED.EVRT */
                    }

                    Return (Zero)
                }
            }
        }
    }

    Name (TPMF, Zero)
    Scope (_SB.PCI0.LPCB)
    {
        Device (H_EC)
        {
            Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                ^^^GFX0.CLID = 0x03
                Return (Zero)
            }

            Name (B1CC, Zero)
            Name (B1ST, Zero)
            Name (B2CC, Zero)
            Name (B2ST, Zero)
            Name (CFAN, Zero)
            Name (CMDR, Zero)
            Name (DOCK, Zero)
            Name (EJET, Zero)
            Name (MCAP, Zero)
            Name (PLMX, Zero)
            Name (PECH, Zero)
            Name (PECL, Zero)
            Name (PENV, Zero)
            Name (PINV, Zero)
            Name (PPSH, Zero)
            Name (PPSL, Zero)
            Name (PSTP, Zero)
            Name (RPWR, Zero)
            Name (LSTE, Zero)
            Name (SLPC, Zero)
            Name (VPWR, Zero)
            Method (ECMD, 1, Serialized)
            {
                If (ECON)
                {
                    While (CMDR)
                    {
                        Stall (0x14)
                    }

                    CMDR = Arg0
                }
            }

            Device (BAT0)
            {
                Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
                Name (_UID, Zero)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }
            }

            Scope (\)
            {
                Field (GNVS, AnyAcc, Lock, Preserve)
                {
                    Offset (0x1E), 
                    BNUM,   8, 
                    Offset (0x20), 
                    B1SC,   8, 
                    Offset (0x23), 
                    B1SS,   8
                }
            }

            Device (BAT1)
            {
                Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }
            }

            Scope (\)
            {
                Field (GNVS, AnyAcc, Lock, Preserve)
                {
                    Offset (0x21), 
                    B2SC,   8, 
                    Offset (0x24), 
                    B2SS,   8
                }
            }

            Device (BAT2)
            {
                Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }
            }
        }
    }

    Device (_SB.PCI0.DOCK)
    {
        Name (_HID, "ABCDEFGH")  // _HID: Hardware ID
        Name (_CID, EisaId ("PNP0C15") /* Docking Station */)  // _CID: Compatible ID
        Name (_UID, 0x02)  // _UID: Unique ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (Zero)
        }
    }

    Scope (_SB)
    {
        Device (LID0)
        {
            Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (SS1)
    {
        Name (_S1, Package (0x04)  // _S1_: S1 System State
        {
            One, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS3)
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x06, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0)
        {
            \_SB.PCI0.LPCB.SPTS (Arg0)
            \_SB.PCI0.NPTS (Arg0)
            \_SB.PCI0.LPCB.SIOS (Arg0)
        }
    }

    Method (WAK, 1, NotSerialized)
    {
        \_SB.PCI0.LPCB.SWAK (Arg0)
        \_SB.PCI0.NWAK (Arg0)
        \_SB.PCI0.LPCB.SIOW (Arg0)
    }
}

