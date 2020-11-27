; int ft_strcmp(const char *s1, const char *s2)

global ft_strcmp

section .text
ft_strcmp:
			mov al, byte [rdi]
			mov bl, byte [rsi]
			movzx rax, al
			movzx rbx, bl
			sub rax, rbx
			jne .exit
			cmp byte [rdi], 0 ; if s1 end
			je .exit
			cmp byte [rsi], 0 ; if s2 end
			je .exit
			inc rdi
			inc rsi
			jmp ft_strcmp
.exit:
			ret
