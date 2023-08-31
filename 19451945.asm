;x^2+y^2=19451945

include _inc.inc

.code
main proc
	xor r15, r15	;19451945

	mov r15, 19451945
	finit
	fild zZ
_begin:
	fild X
	fild X
	fmulp
	fild Y
	fild Y
	fmulp
	faddp
	fcomp
	fstsw ax
	sahf
	jne _inc
	invoke wsprintf, ADDR buf, ADDR fmt, X, Y
	invoke MessageBox,0, ADDR buf, ADDR sTitle, MB_YESNO
	.if rax == 07h
		jmp _exit
	.else
		nop
	.endif

_inc:
	cmp X, r15
	je _incY

	inc X
	jmp _begin

_incY:
	cmp Y, r15
	je _exit

	mov X, 01h
	inc Y
	jmp _begin


_exit:
invoke MessageBox,0,"Значений не найдено","Exit",MB_OK
invoke ExitProcess,0
main endp
end
