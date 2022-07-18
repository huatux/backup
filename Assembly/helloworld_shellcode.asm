; nasm -f elf64 -o shellcode.o shellcode.asm

; ld -s -m elf_x86_64 shellcode.o -o shellcode

; for i in `objdump -d shellcode|tr '\t' ' '|tr ' ' '\n'|egrep '^[0-9a-f]{2}$' `;do echo -n "\\x$i";done


section .text
    global _start
_start:
    jmp message
shellcode:
    xor rax, rax    ;清零
    xor rdi, rdi
    xor rdx, rdx
    mov al, 0x1     ;write
    mov dl, 0x1
    pop rsi
    mov dl, 0xF
    syscall
    mov al, 0x3c    ;exit
    xor rdi, rdi
    syscall
message:
    call shellcode
    db "Hello,World!",0xa
