default rel

global main

section .data
    msg db "Result: ",10
    len equ $-msg

section .bss
    buffer resq 1

section .text

main:
    mov rdi, 7
    mov rsi, 5
    call substraction
    call show
    xor rax, rax
    ret

substraction:
    mov rax, rdi
    sub rax, rsi
    ret

show:
    add rax, 48
    mov [buffer], rax

    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, len
    syscall

    mov rax, 1
    mov rdi, 1
    lea rsi, buffer
    mov rdx, 1
    syscall

    ret