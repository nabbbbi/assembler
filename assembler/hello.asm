	%include "stud_io.inc" {its a directive / file that told assembler implace it with all code that written within. This file written in assembler too. This pariticular file include macroses PRINT, PUTCHAR, FINISH. When assembler see this directive, he remember and became able use this macros until program's end}
	global _start

	section .text
_start:	mov eax, 0
again:	PRINT "Hello"
	PUTCHAR 10
	inc eax
	cmp eax,5
	jl again
	FINISH
