.section .data

.section .text 
        .global main

main:
        jmp fun

hello:
        # write(1, message, 13)
        # mov $1, %rax
        xor %rax, %rax
        xor %rcx, %rcx
        xor %rdi, %rdi
        xor %rsi, %rsi
        xor %rdx, %rdx

        # syscall number for write
        mov $1, %al
        mov $1, %cl
        mov %cx, %di
        pop %rcx

        mov %rcx, %rsi
        mov $0x10, %dl
        syscall

        xor %rax, %rax
        xor %rdi, %rdi
        # for exit syscall
        mov $60, %al
        syscall

fun:
        call hello
        message: .string "Hello, world.\n\0"
