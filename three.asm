global _start

section .text
        _start:
               mov rax,0x1
               mov rdi,0x1
               mov rsi,write
               mov rdx,write_length
               syscall
               

        user_input:
               mov rax,0x0
               mov rdi,0x0
               mov rsi,input
               mov rdx,0x64
               syscall
               mov rbx,rax
        
        printing_hello:
               mov rax,0x1
               mov rdi,0x1
               mov rsi,hello
               mov rdx,hello_length
               syscall
         
        printing_input:
               mov rax,0x1
               mov rdi,0x1
               mov rsi,input
               mov rdx,rbx
               syscall


        program_exit:
               mov rax,0x3c
               mov rdi,0xa
               syscall


section .data
        write: db "Enter your name:"
        write_length: equ $-write
  

        hello: db "hello, "
        hello_length: equ $-hello

section .bss
        input: resb 100
