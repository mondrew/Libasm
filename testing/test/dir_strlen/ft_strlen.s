; size_t ft_strlen(const char *str) // 1 argument - string pointer - from stack

global ft_strlen

section .text
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
