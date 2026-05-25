default rel

global main

section .data
    msg db "Hello!",10
    len equ $-msg

section .text

main:
    call show
    xor rax, rax
    ret
    
show:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, len
    syscall
    ret