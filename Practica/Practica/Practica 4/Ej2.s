.data
A: .word 1
B: .word 2
.code
ld r1, A(r0)
ld r2, B(r0)
sd r1, B(r0)
sd r2, A(r0)
halt

# (a) En el codigo el problema es que esta queriendo guardar la informacion de r2 en A pero el dato que lee para r2 todavia no se termino de guardar en el proceso WB.
#aparece un stall de RAW.  2.2 CPI