section .data
    msg db "Hello World!", 10
    len equ $ - msg

section .text
    global _start
    call _printHello
    call _exit

_printHello:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, len
    syscall
    ret 

_exit:
    mov rax, 60
    mov rdi, 0
    syscall

