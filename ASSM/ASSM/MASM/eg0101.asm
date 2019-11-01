; eg0101.asm in Windows Console
	include io32.inc
	.data
msg    	byte '    | 0 1 2 3 4 5 6 7 8 9 A B C D E F',13,10
	byte '------------------------------------',13,10
	byte '20' ,20h,20h,'|',20h,20h,21h,20h,22h,20h,23h,20h,24h,20h,25h,20h,26h,20h,27h,20h,28h,20h,29h,20h 
	byte 2ah,20h,2bh,20h,2ch,20h,2dh,20h,2eh,20h,2fh,20h,13,10,0
	.code
start:
	mov eax,offset msg		;œ‘ æ
	call dispmsg

	exit 0
	end start