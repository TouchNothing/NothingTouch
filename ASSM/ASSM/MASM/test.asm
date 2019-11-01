	include io32.inc
	.data
msg    	byte 18h,34h,05h,06h,09h,0ah,0ch,11h,12h,14h
	.code
start:
	mov ebx,offset msg	
	mov al,8
	xlat
	call disphb

	exit 0
	end start