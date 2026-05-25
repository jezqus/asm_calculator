default rel

global main

section .data
    msg db "Result: ",10
    len equ $-msg

section .bss
    buffer resb 10

section .text

main:
    call read
    call show
    xor rax, rax
    ret
    
    
read: 
    mov rax, 0
    mov rdi, 0
    mov rsi, buffer
    mov rdx, 10
    syscall
    ret

show:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, len
    syscall
    
    mov rax, 1
    mov rdi, 1
    lea rsi, buffer
    mov rdx, 10
    syscall

    ret