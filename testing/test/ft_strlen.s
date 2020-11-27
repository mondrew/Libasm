global _start

section .data
msg db "Hello WOOOOOOrld!!!!!", 10 ; почему печатает \n? и как выглядит строка?

section .text
_start:
			push msg
			call ft_strlen

			mov rdi, 1
			mov rsi, msg
			dec rax
			mov rdx, rax
			mov rax, 1
			syscall

			mov rax, 60
			mov rdi, 0
			syscall

; // size_t ft_strlen(const char *str) // one argument - string pointer - from stack
ft_strlen:
			xor rax, rax
			push rbp
			mov rbp, rsp
			mov rsp, [rbp + 16]

.counter:
			cmp byte [rsp + rax], 0
			je .quit
			inc	rax
			jmp .counter
.quit:
			mov rsp, rbp
			pop rbp
			ret
