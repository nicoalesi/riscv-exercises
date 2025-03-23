# Ex7:
# Refactoring of Ex6 such that the numbers are on different lines

.data
    .word 7
    
.text
    lui x5, 0x10010
    lw x6, 0(x5)
    
loop:
    addi x10, x6, 0
    addi x17, x0, 1
    ecall
    addi x10, x0, 10
    addi x17, x0, 11
    ecall
    addi x6, x6, -1
    bgt x6, x0, loop
    
    addi x17, x0, 10
    ecall
