	section .bss
	array resb 256 		; create massive with size 256 byte

	section .text
	;; ...
	mov ecx, 256 		; number of elements we put in ecx register
	mov edi, array		; address of massive array we put in edi register
	mov al, '@'		; requireble code we put in onebyte register al
again:	mov [edi], al		; put code in next element of massive
	inc edi			; increase adress by one
	dec ecx			; decrease counting of circles
	jnz again		; if not zero jump to again.
