.data
	tabla: .word 1,2,3,4,5,6,7,8,9,10
	x: .word 5
	cant: .word 0
	res: .word 0,0,0,0,0,0,0,0,0,0
.code
	daddi r1, r0,0  ;inicializo el salto entre datos de la tabla
	daddi r5, r0,10  ;inicializo el finalizador
	DADDI R6,R0,0  ;contador cant
	DADDI R4,R0,1
	ld r2, x(r0)
LOOP:
	daddi r7, r0,0
	ld r3, tabla(r1)
	slt r7, r2,r3
	beqz r7, SUMO
	DADDI R6, R6,1
	sd r4, res(r1)
SUMO:
	DADDI R1,R1,8
	daddi r5, r5, -1
	bnez r5, LOOP
	sd r6, cant(r0)
	halt
	
	
