; char *ft_strcpy(char *dest, const char *src)

global ft_strcpy

section .text
ft_strcpy:
			mov rax, rdi ; remember rdi in rax (we move rdi, rax - return value)
			mov rcx, rdi ; save rdi position
			mov rdx, rsi ; save rsi position
.goon:
			cmp byte [rdx], 0
			je .quit
			mov bl, byte [rdx]
			mov byte [rcx], bl
			inc rcx
			inc rdx
			jmp .goon
.quit:
			mov byte [rcx], 0
			ret
