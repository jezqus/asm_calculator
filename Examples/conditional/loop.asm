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
    push rcx
    mov rax, rcx
    dec rax
    add rax, 48
    mov [buffer], rax
    call show
    pop rcx
    loop l1
    ret

show: 

    mov rax, 1
    mov rdi, 1
    mov rsi, buffer
    mov rdx, 1
    syscall

    ret