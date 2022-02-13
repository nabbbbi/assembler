	;; count elements in multiplicity set 512
	xor ebx, ebx		;ebx:=0
	mov ecx, 15 		; the last index
lp:	mov eax, [set512+4*ecx]	;load element
lp2:	test eax, 1		; is true in last element ?
	jz notone 		; if not jump
	inc ebx 		; if yes increace counting
notone:	shr eax, 1		; shift eax
	test eax, eax 		; it there anything else ?
	jnz lp2 		; if yes continue internal cycle
	jecxz quit 		; if in ecx false end up
	dec ecx 		; or decreasin
	jmp lp 			; and continue outer cycle
quit:				; now result on counting containing in ebx register
