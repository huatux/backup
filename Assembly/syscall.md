### Via interrupt

On both Linux x86 and Linux x86_64 systems you can make a system call by calling interrupt $0x80 using the int instruction. Parameters are passed by setting the general purpose registers as following:
register mapping for system call invocation using int $0x80

| system call number	| 1st parameter	| 2nd parameter	| 3rd parameter	| 4th parameter | 5th parameter	| 6th parameter	| result |
| ------------------	| -------------	| -------------	| -------------	| ------------- | -------------	| -------------	| ------ |
| eax |	ebx	| ecx	| edx	| esi	| edi	| ebp	| eax |


The system call numbers are described in the Linux generated file $build/‌arch/‌x86/‌include/‌generated/‌uapi/‌asm/‌unistd_32.h or $build/‌usr/‌include/‌asm/‌unistd_32.h. The latter could also be present on your Linux system, just omit the $build.

All registers are preserved during a system call with int $0x80.


### Via dedicated system call invocation instruction
The x86_64 architecture introduced a dedicated instruction to make a system call. It does not access the interrupt descriptor table and is faster. Parameters are passed by setting the GPRs as following:

register mapping for system call invocation using syscall
| system call number	| 1st parameter	| 2nd parameter	| 3rd parameter	| 4th parameter | 5th parameter	| 6th parameter	| result |
| ------------------	| -------------	| -------------	| -------------	| ------------- | -------------	| -------------	| ------ |
| rax	| rdi	| rsi	| rdx	| r10	| r8	| r9	| rax |

The syscall numbers are described in the Linux generated file $build/‌usr/‌include/‌asm/‌unistd_64.h. This file could also be present on your Linux system, just omit the $build.

All registers, except rcx and r11 (and the return value, rax), are preserved during the system call with syscall.

### library call
In call of x86-64 Linux's C library functions, parameter 6 is passed on r9 and further parameters, onto the stack (in reverse order).

register mapping for library call
| 1st parameter	| 2nd parameter	| 3rd parameter	| 4th parameter	| 5th parameter	| 6th parameter |
| -------------	| -------------	| -------------	| -------------	| ------------- | -------------	|
| rdi	| rsi	| rdx	| rcx	| r8	| r9 |

The caller can expect to find the return value of the subroutine in the register rax.

[making-a-system-call](https://en.wikibooks.org/wiki/X86_Assembly/Interfacing_with_Linux#Via_dedicated_system_call_invocation_instruction)

[linux-sys-call-table](https://filippo.io/linux-syscall-table/)
