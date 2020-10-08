.section .data

.section .text 
        .global main

main:
        jmp fun

hello:
        # write(1, message, 13)
        # mov $1, %rax
        xor %eax, %eax
        xor %ecx, %ecx
        xor %edi, %edi
        xor %esi, %esi
        xor %edx, %edx

        # syscall number for write, 32bit
        mov $4, %al
        mov $2, %cl
        mov %cx, %di
        popq %ecx

        mov %ecx, %esi
        mov $0x10, %dl
        int $0x80

        xor %eax, %eax
        xor %edi, %edi
        # for exit syscall, 32bit
        mov $1, %al
        int $0x80

fun:
        call hello
        message: .string "Hello, world.\n\0"
