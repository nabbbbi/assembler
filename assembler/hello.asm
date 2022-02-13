	%include "stud_io.inc" {its a directive / file that told assembler implace it with all code that written within. This file written in assembler too. This pariticular file include macroses PRINT, PUTCHAR, FINISH. When assembler see this directive, he remember and became able use this macros until program's end}
	global _start

	section .text {in executable file of UNIX machine commands store in 1 part, initialized date stores in other part and information about memory, that we must have, to store uninitialized data in 3rd part. This parts called Sections. And when  executable file loading, OS create spaces of memory, called Segments,1) for machine code, that will store all code from 1st Section of executable file(with machine command),2) for data (here bound initialized and uninitilized data), 3) for stack (do not require any section from executable file)}
_start:	mov eax, 0
again:	PRINT "Hello"
	PUTCHAR 10
	inc eax
	cmp eax,5
	jl again
	FINISH
