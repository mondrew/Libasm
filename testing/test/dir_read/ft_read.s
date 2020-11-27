; ssize_t read(int fd, void *buf, size_t count)
; define errno as an external function
extern __errno_location

global ft_read

section .text
ft_read:
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
