global _start

section	.data
msg		db "Hello, World!", 10
msg_len	equ $-msg

section .text
_start:	mov	rax, 1		; call write
		;mov rdi, 1		; standard input
		;mov rsi, msg
		;mov rdx, msg_len
		syscall

		mov rax, 60
		mov rdi, 0
		syscall
