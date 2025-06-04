.data
	X: .word 5
	Y: .word 3
	FIN: .word 5
.code
	DADDI R3 , R0, 0
	LD R1, FIN(R0)
	LD R2, X(R0)
	LD R3, Y(R0)
LOOP: 
	DADDI R1, R1, -1
	BNEZ R1, LOOP
	DADD R2, R2, R3
	HALT 