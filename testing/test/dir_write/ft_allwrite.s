global _start

section .data
msg db "Hello WOOOOOOrld!!!!!", 10

section .text
_start:
			mov rdi, 1
			mov rsi, msg
			mov rdx, 15
			call ft_write

			mov rax, 60
			mov rdi, 0
			syscall
; int write(int fd, void *ptr, size_t size)
ft_write:
			mov rax, 1		; SYS_write
			syscall
			; if no errorcode (EAX > -1 || EAX < -133) => return
			cmp eax, -1
			jg .exit
			cmp eax, -133
			jl .exit
			neg rax
			mov rdi, rax
			;call extern
.exit:
			ret
