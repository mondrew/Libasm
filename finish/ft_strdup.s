; char *ft_strdup(const char *s)

extern malloc
extern __errno_location

global ft_strdup

section .text
ft_strdup:
			call ft_strlen
			inc rax					; additional byte for '\0'
			push rdi				; save before malloc (malloc changes rdi!)
			mov rdi, rax			; now rdi has strlen
			call malloc
			pop rdi					; backup rdi
			mov rdx, rdi			; save rdi in rdx (cdecl)
			
			cmp rax, 0				; check if malloc return zero
			je .error

			push rbx				; save rbx (cdecl)
			mov rbx, rax			; save new_str beginning
.lp:
			cmp byte [rdx], 0
			je .quit
			mov cl, byte [rdx]
			mov byte [rbx], cl
			inc rdx
			inc rbx
			jmp .lp
.quit:
			mov byte [rbx], 0		; put '\0' at the end
			pop rbx					; backup rbx (cdecl)
			ret
.error:
			push rdi
			mov rdi, 12
			call __errno_location	; returns pointer to errno variable
			mov [rax], rdi			; set errno
			xor rax, rax			; return NULL
			pop rdi					; backup rdi (cdecl)
			ret

ft_strlen:
			xor rax, rax
			mov rcx, rdi 			; to save rdi position
.lp:
			cmp byte [rcx], 0
			je .quit
			inc rcx
			inc rax
			jmp .lp
.quit:
			ret
