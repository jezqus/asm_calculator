default rel

global main

section .data
    msg db "Result: ",10
    len equ $-msg

section .bss
    buffer resq 1

section .text

main:
    mov rdi, 3
    mov rsi, 2
    call multiply
    call show
    xor rax, rax
    ret

multiply:
    mov rax, rdi
    mov rbx, rsi
    mul rbx
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