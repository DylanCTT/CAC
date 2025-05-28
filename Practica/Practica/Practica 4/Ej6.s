.data
	A: .word 3
	B: .word 3
	C: .word 3
	D: .word 0
.code
	ld R1, A(R0)
	ld R2, B(R0)
	ld R3, C(R0)
	dadd r4,r0,r0
	bne r1, r2, SIGO1
	daddi r4, r4, 1
	SIGO1: 
	bne r1,r3, SIGO2
	daddi r4,r4,1
	j FIN
	SIGO2: 
	bne r2,r3,FIN
	daddi r4,r4,1
	FIN: sd r4, D(r0)
halt 