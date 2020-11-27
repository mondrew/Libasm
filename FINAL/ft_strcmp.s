; int ft_strcmp(const char *s1, const char *s2)

global ft_strcmp

section .text
ft_strcmp:
			push rdi			; save rdi (cdecl)
			push rsi			; save rsi (cdecl)
.start:
			mov al, byte [rdi]
			mov cl, byte [rsi]
			movzx rax, al
			movzx rcx, cl
			sub rax, rcx
			jne .exit
			cmp byte [rdi], 0 	; if s1 end
			je .exit
			cmp byte [rsi], 0 	; if s2 end
			je .exit
			inc rdi
			inc rsi
			jmp .start
.exit:
			pop rsi				; backup rsi (cdecl)
			pop rdi				; backup rdi (cdecl)
			ret
