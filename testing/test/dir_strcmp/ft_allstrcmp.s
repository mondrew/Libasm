; int ft_strcmp(const char *s1, const char *s2)
global _start

section .data
string1 db "Hello, World!", 10, 0
string2 db "Aello, World!", 10, 0
s1bigger db "First string is bigger", 10, 0
s2bigger db "Second string is bigger", 10, 0
equalstr db "Strings are equal", 10, 0
print db "Hi", 10, 0

section .text
_start:
			mov rdi, string1
			mov rsi, string2
			call ft_strcmp

			mov rcx, rax
lp:
			mov rdi, 1 ; stdout
			mov rsi, print
			mov rdx, 3
			mov rax, 1 ; sysWRITE
			syscall
			loop lp

			mov rax, 60
			mov rdi, 0
			syscall
;			cmp rax, 0
;			jl .second
;			;cmp rax, 0
;			jg .first
;			;cmp rax, 0
;			je .equal
;.second:
;			mov rsi, s2bigger
;			mov rdx, 24
;			mov rax, 1 ; sys_WRITE
;			syscall
;
;			mov rax, 60 ; sys_exit
;			mov rdi, 0 ; success
;			syscall
;.first:
;			mov rsi, s1bigger
;			mov rdx, 23
;			mov rax, 1 ; sys_WRITE
;			syscall
;
;			mov rax, 60 ; sys_exit
;			mov rdi, 0 ; success
;			syscall
;.equal:
;			mov rsi, equalstr
;			mov rdx, 18
;			mov rax, 1 ; sys_WRITE
;			syscall
;
;			mov rax, 60 ; sys_exit
;			mov rdi, 0 ; success
;			syscall

ft_strcmp:
			mov rax, [rdi]
			sub rax, [rsi]
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
