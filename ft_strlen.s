; char *ft_strdup(const char *s)

global ft_strlen

section .text

ft_strlen:
			xor rax, rax
			mov rcx, rdi		; save rdi position
.lp:
			cmp byte [rcx], 0
			je .quit
			inc rcx
			inc rax
			jmp .lp
.quit:
			ret
