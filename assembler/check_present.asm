	;; check element for including in multiplicity set512, whick number contains in ebx register
	mov cl, bl		; get number of bin
	and cl, 11111b		; in register cl
	mov eax, 1 		; create mask
	shl eax, ebx 		; calculate number of element
	shr edx, 5 		; in register edx
	test [set512+4*edx], eax ; use mask
	;; now ZF=1 denote element not present in set512 and ZF=0 vice versa
