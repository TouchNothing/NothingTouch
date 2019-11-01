    ; eg0322.asm in Windows Console
	include io32.inc
	.data
msg    byte 'Hello, Assembly!',13,10,0	;
	.code
start:
	mov eax , 10
	mov ebx , eax		
	shl ebx , 2
	add ebx , eax
	shl ebx , 2
	add ebx , eax
	mov eax , ebx
	call dispuid

	exit 0
	end start
    
