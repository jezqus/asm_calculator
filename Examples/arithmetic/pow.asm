default rel

global main

section .text

main:
    mov rax, 2
    mov rcx, 4
    call pow
    xor rax, rax
    ret

pow:
    test rcx, rcx
    jz zero
    dec rcx
    jz ret_pow
    dec rcx
    mov r8, rax

multiply:
    mul r8
    dec rcx
    jnz multiply
    jmp ret_pow

zero:
    mov rax, 1    

ret_pow:
    ret