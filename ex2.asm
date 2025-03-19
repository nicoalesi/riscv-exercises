# Ex2:
#   Load 2 values from the data segment
#   Add them and print the result
#   Exit program

.data
    .word 11
    .word 55
    
.text
    lui x4, 0x10010
    lw x5, 0(x4)
    lw x6, 4(x4)
    add x10, x5, x6
    
    addi x17, x0, 1
    ecall
    
    addi x17, x0, 10
    ecall
