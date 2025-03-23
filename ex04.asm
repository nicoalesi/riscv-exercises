# Ex4:
# Load two values from the data segment
# Compare them to find the largest one
# Print it
# Exit program

.data
    .word 23
    .word 17
    
.text
    lui x5, 0x10010
    lw x6, 0(x5)
    lw x7, 4(x5)
    bge x6, x7, greater
    addi x10, x7, 0
    addi x17, x0, 1
    ecall
    
    addi x17, x0, 10
    ecall
    
   
greater:
    addi x10, x6, 0
    addi x17, x0, 1
    ecall
    
    addi x17, x0, 10
    ecall
