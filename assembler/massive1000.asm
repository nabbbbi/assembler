	array resd 1000

	mov ecx, 1000 		; count of iterations
	mov esi, array		; address of the first element
	mov eax, 0 		; first value of sum
lp:	add eax, [esi] 		; add value to sum
	add esi, 4 		; address of next element
	loop lp			; decreace counting
		 		; if need - continue
	mov ecx, 1000
	mov eax, 0
lp:	add eax, [array+4*ecx-4]
	loop lp
