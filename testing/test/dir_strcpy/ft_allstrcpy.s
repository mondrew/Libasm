; char *ft_strcpy(char *dest, const char *src)

;global _ft_strcpy
global _start

section .data
src db "Hello, World!", 10, 0

section .bss
dest resb 15

section .text
_start:
			mov rdi, dest
			mov rsi, src
			call ft_strcpy

			mov rdi, 1 ; stdout
			mov rsi, rax
			mov rax, 1 ; sysWRITE
			mov rdx, 14
			syscall

			mov rax, 60
			mov rdi, 0
			syscall

ft_strcpy:
			mov rax, rdi ; remember rdi in rax (we move rdi, rax - return value)
.goon:
			cmp byte [rsi], 0
			je .quit
			mov rcx, [rsi]
			mov [rdi], rcx
			inc rdi
			inc rsi
			jmp .goon
.quit:
			mov rdi, 0
			ret
