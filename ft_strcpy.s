; char *ft_strcpy(char *dest, const char *src)

global ft_strcpy

section .text
ft_strcpy:
			mov rax, rdi 		; remember rdi in rax (rax is the return)
			mov rcx, rdi 		; save rdi position
			mov rdx, rsi 		; save rsi position
			push rbx			; save rbx (cdecl)
.goon:
			cmp byte [rdx], 0
			je .quit
			mov bl, byte [rdx]
			mov byte [rcx], bl
			inc rcx
			inc rdx
			jmp .goon
.quit:
			pop rbx				; backup rbx (cdecl)
			mov byte [rcx], 0
			ret
