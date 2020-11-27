; ssize_t write(int fd, const void *buf, size_t size)
; define errno as an external function
extern __errno_location

global ft_write

section .text
ft_write:
			mov rax, 1		; SYS_write
			syscall
			; if no errorcode (EAX > -1 || EAX < -133) => return
			cmp eax, -1
			jg .exit
			cmp eax, -133
			jl .exit
.error:
			neg rax
			mov rdi, rax
			call __errno_location ; returns pointer to errno variable
			mov [rax], rdi
			mov rax, -1
.exit:
			ret
