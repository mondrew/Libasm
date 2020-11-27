; char *ft_strdup(const char *s)

extern malloc

global main

section .data
string db "Hello, World!", 10, 0

section .text
main:
			mov rdi, string
			call ft_strdup

			mov rsi, rax
			mov rax, 1
			mov rdi, 1
			mov rdx, 14
			syscall

			mov rax, 60
			mov rdi, 0
			syscall

ft_strdup:
			call ft_strlen
			inc rax ; additional byte for '\0'
			mov rdx, rdi ; save string address in rdx
			mov rdi, rax ; now rdi has strlen
			call malloc

			cmp rax, 0 ; check if malloc return zero
			je .error

			mov rbx, rax ; save new_str beginning
.lp:
			mov cl, byte [rdx] ; rcx (cl) is just helper to move bytes
			mov bl, cl
			movzx rbx, bl
			inc rdx ; next byte in str
			inc rbx ; next byte in new_str
			dec rdi ; decrementing strlen
			cmp byte [rdi], 0
			jnz .lp
			ret

.error:
			xor rax, rax
			ret

ft_strlen:
			xor rax, rax
			mov rcx, rdi ; to save rdi position
.lp:
			cmp byte [rcx], 0
			je .quit
			inc rcx
			inc rax
			jmp .lp
.quit:
			ret
