default rel

global main

section .data
    msg db "Result: ",10
    len equ $-msg

section .bss
    buffer resq 1

section .text

main:
    mov rax, 10
    mov rbx, 5
    sub rax, rbx
    jmp show

end:
    xor rax, rax
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

    jmp end