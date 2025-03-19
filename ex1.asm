# Ex1: 
#   Load 2 values from the data segment
#   Add them and store the result in the data segment
#   Exit program

.data
    .word 123
    .word 77
    
.text
    lui x4, 0x10010
    lw x5, 0(x4)
    lw x6, 4(x4)
    add x28, x5, x6
    sw x28, 8(x4)
    
    addi x17, x0, 10
    ecall
