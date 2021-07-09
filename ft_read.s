; ssize_t read(int fd, void *buf, size_t count)
extern __errno_location				; define errno as an external function

global ft_read

section .text
ft_read:
			mov rax, 0				; SYS_read
			syscall
									; if no errorcode 
									; (EAX > -1 || EAX < -133) => return
			cmp eax, -1
			jg .exit
			cmp eax, -133
			jl .exit
.error:
			neg rax
			push rdi
			mov rdi, rax
			call __errno_location	; get the errno address
			mov [rax], rdi			; set the errno properly
			pop rdi
			mov rax, -1
.exit:
			ret
