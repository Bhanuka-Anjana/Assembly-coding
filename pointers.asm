section .text
    globl _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rbx , 0x4141414141414141
    mov rsi , rbx
    mov rdx, 8
    syscall

    mov rax, 1
    mov rdi, 1
    mov rbx , 0x4141414141414141
    mov rsi , [rbx]
    mov rdx, 8
    syscall

    mov rax, 60
    mov rdi, 0
    syscall