;include C:\\masm64\\include64\\masm64rt.inc
;x^2+y^2=19451945
;x=?
;y=?
;bruteforce
include C:\masm64\include64\masm64rt.inc

.data ; 
sTitle byte "Уравнение X^2+Y^2=19451945",0
fmt byte "X = %d Y= %d", 0
buf byte sizeof fmt + 32 DUP(0)


zZ dq 19451945
X dq 0
Y dq 0


