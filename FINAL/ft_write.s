; ssize_t write(int fd, const void *buf, size_t size)
extern __errno_location				; define errno as an external function

global ft_write

section .text
ft_write:
			mov rax, 1				; SYS_write
			syscall
									; if no errorcode 
									; (EAX > -1 || EAX < -133) => return
			cmp eax, -1
			jg .exit
			cmp eax, -133
			jl .exit
.error:
			neg rax
			push rdi				; save rdi (cdecl)
			mov rdi, rax
			call __errno_location	; returns the address of errno variable
			mov [rax], rdi			; set the errno
			pop rdi					; rdi backup (cdecl)
			mov rax, -1
.exit:
			ret
