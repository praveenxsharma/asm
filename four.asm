global _start

section .text
_start:
        mov rax,0x1
        mov rdi,0x1
        mov rsi,query
        mov rdx,query_length
        syscall
        
        mov rax,0x0
        mov rdi,0x0
        mov rsi,first
        mov rdx,0x64
        syscall
        mov rbx,rax

second_process:
        
        mov rax,0x1
        mov rdi,0x1
        mov rsi,secondquery
        mov rdx,second_length
        syscall

        mov rax,0x0
        mov rdi,0x0
        mov rsi,second
        mov rdx,0x64
        syscall
        mov rcx,rax

add:
        add rbx,rcx
        mov rbp,rbx
        syscall

print:

        mov rax,0x1
        mov rdi,0x1
        mov rsi,rbp
        syscall

exit:
        mov rax,0x3c
        mov rdi,0xa
        syscall
        

section .data 


query: db "enter first value:"
query_length: equ $-query


secondquery: db "enter second value:"
second_length: equ $-secondquery

section .bss

first: resb 100
second: resb 100
