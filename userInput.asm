section .data
    promt1 db "What is your name?" 
    len1 eql $ - promt1

    promt2 db "What is your age?"
    len2 eql $ - promt2

section .bss
    name resb 20
    age resb 20

section .text
    global _start

_start:
    call _printPromt1
    call _readName
    call _printPromt2
    call _readAge
    call _printResult
    call _exit

_printPromt1:
    mov rax, 1
    mov rdi, 1
    mov rsi, promt1
    mov rdx, len1
    syscall
    ret

_printPromt2:
    mov rax, 1
    mov rdi, 1
    mov rsi, promt2
    mov rdx, len2
    syscall
    ret

_readName:
    mov rax, 0
    mov rdi, 0
    mov rsi, name
    mov rdx, 20
    syscall
    ret

_readAge:
    mov rax, 0
    mov rdi, 0
    mov rsi, age
    mov rdx, 20
    syscall
    ret

_printResult:
    mov rax, 1
    mov rdi, 1
    mov rsi, name
    mov rdx, 20
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, age
    mov rdx, 20
    syscall
    ret 

_exit:
    mov rax, 60
    mov rdi, 0
    syscall

