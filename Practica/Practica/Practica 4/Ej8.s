.data
	A: .word 5
	B: .word 3
.code
	LD R2, B(R0)
	DADDI R3 , R0, 0
	LD R1, A(R0)
LOOP:
	DADDI R2, R2, -1
	BNEZ R2, LOOP
	DADD R3, R3, R1
	HALT 