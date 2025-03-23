# Ex5:
# Refactoring of Ex4 to not repeat instructions

.data 
    .word 91
    .word 89
    
.text
    lui x5, 0x10010
    lw x6, 0(x5)
    lw x7, 4(x5)
    bge x6, x7, greater
    addi x10, x7, 0
    beq x0, x0, continue
    
greater:
    addi x10, x6, 0

continue:
    addi x17, x0, 1
    ecall
    
    addi x17, x0, 10
    ecall
