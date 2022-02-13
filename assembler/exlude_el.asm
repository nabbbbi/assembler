	section .bss
	set512 resd 16
	section .text

	;; ...
	xor eax, eax 		; eax :=0
	mov ecx, 16
	mov esi, set512
lp:	mov [esi+4*ecx-4], eax
	loop lp
	;; get rid element from multiplicity set512, which number contains in ebx register
	mov cl, bl 		; get number of bit
	and cl, 11111b		; in cl register
	mov eax, 1 		; create mask
	shl eax, cl 		; create mask in eax register
	not eax 		; invert mask
	mov edx, ebx 		; calculate number of element
	shr edx, 5 		; calculate number of element in edx register
	and [set512+4*edx], eax ; use mask
