global _start

section .text
_start: 
        mov rax,0x1 ;write
        mov rdi,0x1 ;stndrd output
        mov rsi,msg 
        mov rdx,0x16 ; msg length 22 <newline character is counted as one byte>
        syscall



        mov rax,0x3c ; exit
        syscall

section .data
         msg db "heck yeah i made this", 10
