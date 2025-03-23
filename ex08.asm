# Ex8:
# Load a value from the data segment
# Calculate the sum from 1 to that value without using Gauss formula
# Print the sum
# Exit program

.data
    .word 10
    
.text
    lui x5, 0x10010
    lw x6, 0(x5)
    addi x10, x0, 0
    
loop:
    add x10, x10, x6
    addi x6, x6, -1
    bgt x6, x0, loop
    
    addi x17, x0, 1
    ecall
    
    addi x17, x0, 10
    ecall
