extern __errno_location

global _start

section .data

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
			mov rax, 0		; SYS_read
			syscall
			; if no errorcode (EAX > -1 || EAX < -133) => return
			cmp eax, -1
			jg .exit
			cmp eax, -133
			jl .exit
.error:
			neg rax
			mov rdi, rax
			call __errno_location
			mov [rax], rdi
			mov rax, -1
.exit:
			ret
