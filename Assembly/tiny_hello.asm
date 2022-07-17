;; hello.asm: Copyright (C) 2021 Brian Raiter <breadbox@muppetlabs.com>
;; Licensed under the terms of the GNU General Public License, either
;; version 2 or (at your option) any later version.
;;
;; To build:
;;	nasm -f bin -o hello hello.asm && chmod +x hello

BITS 64

		org	0x500000000

		db	0x7F
_start:		db	"ELF"			; 3 REX prefixes, no effect
		mov	al, 1			; 1 = write system call number
		mov	dl, 13			; 13 = number of bytes in msg
		lea	rsi, [rel msg]		; point rsi at the msg buffer
		cmp	eax, 0x003E0002
		mov	edi, eax		; set rdi to 1 (stdout fd)
		jmp	short part2
phdr:		dd	1
		dd	5
		dq	phdr - $$
		dq	phdr
part2:		syscall				; rax = write(rdi, rsi, rdx)
		sub	eax, edx		; rdi = 0 if write succeeded,
		xchg	eax, edi		;   nonzero otherwise
		cmp	eax, 0x00010038
		mov	al, 60			; 60 = exit system call number
		syscall				; exit(rdi)
		dw	0
		dw	1
		mov	al, 60			; (not executed, just needs to
		syscall				;   mirror the prior 8 bytes)
		dw	0
msg:		db	'hello, world', 10	; the greeting to output

;; This is how the file looks when it is read as a 64-bit ELF header,
;; beginning at offset 0:
;;
;; e_ident:	db	0x7F, "ELF"			; required
;;		db	0xB0				; (garbage)
;;		db	1				; 1 = ELFDATA2LSB
;;		db	0xB2				; (garbage)
;;		db	0x0D				; (garbage)
;;		db	0x48, 0x8D, 0x35, 0x39		; (unused)
;;		db	0x00, 0x00, 0x00, 0x3D
;; e_type:	dw	2				; 2 = ET_EXE
;; e_machine:	dw	62				; 62 = EM_X86_64
;; e_version:	dd	0x18EBC789			; (unused)
;; e_entry:	dq	0x0000000500000001		; program starts here
;; e_phoff:	dq	0x18				; phdrs located here
;; e_shoff:	dq	0x0000000500000018		; (unused)
;; e_flags:	dd	0xD029050F			; (unused)
;; e_ehsize:	dw	0x3D97				; (garbage)
;; e_phentsize:	dw	0x38				; phdr entry size
;; e_phnum:	dw	1				; one phdr in the table
;; e_shentsize:	dw	0x3CB0				; (unused)
;; e_shnum:	dw	0x050F				; (unused)
;; e_shstrndx:	dw	0				; (unused)
;;
;; This is how the file looks when it is read as a program header
;; table, beginning at offset 0x18:
;;
;; p_type:	dd	1				; 1 = PT_LOAD
;; p_flags:	dd	5				; 5 = PF_R | PF_X
;; p_offset:	dq	0x18				; addr near top of file
;; p_vaddr:	dq	0x0000000500000018		; load to this address
;; p_paddr:	dq	0x00383D97D029050F		; (unused)
;; p_filesz:	dq	0x0000050F3CB00001		; exaggerated file size
;; p_memsz:	dq	0x0000050F3CB00001		; equal to file size
;; p_align:	dq	0x77202C6F6C6C6568		; (unused)
;;
;; Even though p_offset points to the middle of the file, the loader
;; will still load the entire file, as long as p_vaddr has the same
;; offset in its address. It's okay for the p_filesz value to be larger
;; than the true file size, but only as long as p_memsz has the same
;; oversized value.
