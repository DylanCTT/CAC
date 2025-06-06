.data
	estatura: .double 1.82
	peso: .double 84.3
	IMCS: .double 18.5, 25, 30
	IMC: .word  0
	estado: .double 0
.code
	l.d f1, estatura(r0)
	l.d f2, peso(r0)
	mul.d f3, f1, f1
	div.d f4, f2, f3
	
	
