	matrix resd 10*15 	; if we need element of N line we should count from first line. To do that we need 15*4=60 and product this by N. Put this on some register eax. And number of element on N line put on other register ebx. That how we can find particular element in 2d massive. [matrix+eax+4*ebx]
