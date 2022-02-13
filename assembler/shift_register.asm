	mov edx, ebx
	and ebx, 11111b 	; geting 5 low orders
	shr edx, 5 		; divide last by 32
	mov bh, dl

	shl ebx, 3 		; here we just shift all register by 3 orders to the left to store quotient;
	shr bl, 3 		; shift low byte of ebx by right  to store whole remainder of division;
	section .bss
	set512 resd 16 		; we goot space of memery for work. and we mark the beginnig of this space via label as set512
	section .text 		; we need to store nul on each elements of massive. To do that we use next algoritm

	;; ...
	xor eax, eax 		; eax :=0 because xor means zero when the same operands and true when different
	mov ecx, 16
	mov esi, set512
lp:	mov [esi+4*ecx-4], eax 	; means we do iterations from 16 to 1. its equivalent of for cycle  
	loop lp

	;; put in multiplicity set512 element
	;; which number contains in ebx register
	mov cl, bl 		; get number on bit in element
	and cl, 11111b		; in register cl. just get remainder of division as number of bit
	mov eax, 1 		; create mask, value with only one 1 and 0 in last order.
	shl eax, cl 		; create mask in eax register
	mov edx, ebx 		; calculate number of element
	shr edx, 5 		; calculate number of element in edx register. number of element will contain in dl register, but its not matter
	or [set512+4*edx], eax	; use mask to determine requireble element.
