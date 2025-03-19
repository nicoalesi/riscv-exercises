# Ex3:
#   Load a value from the data segment
#   Bitwise AND it with 1 to see if it's even or odd
#   Print "pari" or "dispari" according to the number
#   Exit program

.data
    .word 2
    .asciz "pari"
    .asciz "dispari"
    
.text
    lui x4, 0x10010
    lw x5, 0(x4)
    andi x5, x5, 1
    beq x5, x0, pari
    
    addi x10, x4, 9
    addi x17, x0, 4
    ecall
    addi x17, x0, 10
    ecall
    
pari:
    addi x10, x4, 4
    addi x17, x0, 4
    ecall
    addi x17, x0, 10
    ecall
