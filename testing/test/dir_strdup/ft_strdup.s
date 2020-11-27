; char *ft_strdup(const char *s)

extern malloc

global ft_strdup

section .text
ft_strdup:
			call ft_strlen
			inc rax ; additional byte for '\0'
			;mov rdx, rdi ; save string address in rdx
			push rdi
			mov rdi, rax ; now rdi has strlen
			call malloc
			pop rdi
			mov rdx, rdi

			cmp rax, 0 ; check if malloc return zero
			je .error

			mov rbx, rax ; save new_str beginning
.lp:
			cmp byte [rdx], 0
			je .quit
			mov cl, byte [rdx]
			mov byte [rbx], cl
			inc rdx
			inc rbx
			jmp .lp

;			mov cl, byte [rdx] ; rcx (cl) is just helper to move bytes
;			mov bl, cl
;			movzx rbx, bl
;			inc rdx ; next byte in str
;			inc rbx ; next byte in new_str
;			dec rdi ; decrementing strlen
;			cmp byte [rdi], 0
;			jnz .lp
;			ret
.quit:
			mov byte [rbx], 0
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
