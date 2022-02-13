	jmp cycle		; jump to label cycle
	jmp eax			; jump to address than contains in eax register
	jmp [addr]		; jump to address, in RAM memory that marked by addr label
	jmp [eax]		;jump to addres from memory with address that contain in eax register. only first jump is direct jump then other are indirect.
