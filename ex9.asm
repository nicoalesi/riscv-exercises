# Ex9:
# Load the length of the array from the data segment
# Load iteratively every element from the data segment
# Add the last loaded element to the total sum
# Print the total sum
# Exit program

.data
    .word 7
    .word -5, 0, 2, -4, 21, 8, 3
    
.text
    lui x5, 0x10010
    lw x6, 0(x5)
    addi x10, x0, 0

loop:
    addi x5, x5, 4
    lw x7, 0(x5)
    add x10, x10, x7
    addi x6, x6, -1
    bgt x6, x0, loop
    
    addi x17, x0, 1
    ecall
    
    addi x17, x0, 10
    ecall
