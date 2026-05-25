default rel

global main

section .bss
    buffer resb 1

section .text

main:
    mov rcx, 10
    call l1
    xor rax, rax
    ret

l1:
    mov [buffer], rcx
    dec byte [buffer]
    add byte [buffer], 48
    push rcx
    call show
    pop rcx
    dec rcx
    jnz l1
    ret

show: 

    mov rax, 1
    mov rdi, 1
    mov rsi, buffer
    mov rdx, 1
    syscall

    ret