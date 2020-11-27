push edx
push dword mylabel
push dword 517
call myproc
add esp, 12

pcall3 myproc, dword 517, dword mylabel, edx

%macro pcall1 2		; 2 -- количество параметров
		push %2
		call%1
		add esp, 4
%endmacro

pcall1 proc, eax	; вызов макроса1

%marco pcall2 3
		push %3
		push %2
		call %1
		add esp, 8
%endmacro

%macro pcall3 4
		push %4
		push %3
		push %2
		call %1
		add esp, 12
%endmacro

%macro pcall0 1
		call %1
%endmacro

%macro pcall4 5
		push %5
		push %4
		push %3
		push %2
		call %1
		add esp, 16
%endmacro

%macro pcall5 6
		push %6
		push %5
		push %4
		push %3
		push %2
		call %1
		add esp, 20
%endmacro

%macro pcall6 7
		push %7
		push %6
		push %5
		push %4
		push %3
		push %2
		call %1
		add esp, 24
%endmacro

%macro pcall7 8
		push %8
		push %7
		push %6
		push %5
		push %4
		push %3
		push %2
		call %1
		add esp, 28
%endmacro
