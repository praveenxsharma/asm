global _start

section .text

_start:
       ; print hello world <this is a comment>
       MOV rax,0x1 ;write syscall
       mov rdi,0x1 ;file descriptor  --> output(1)
       mov rsi,hello ;buffer --> hello
       mov rdx,0xb ; length --> 11
       syscall
      
      ;exit
      mov rax,0x3c
      mov rdi,0xb
      syscall


section .data
     hello: db 'hello world'

