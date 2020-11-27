; char *ft_strcpy(char *dest, const char *src)

global ft_strcpy

section .text
ft_strcpy:
			mov rax, rdi ; remember rdi in rax (we move rdi, rax - return value)
.goon:
			cmp byte [rsi], 0
			je .quit
			mov rcx [rsi]
			mov [rdi], rcx
			inc rdi
			inc rsi
			jmp .goon
.quit:
			mov rdi, 0
			ret
