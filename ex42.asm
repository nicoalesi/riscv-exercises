# Ex42:
# Load the length of 2 arrays
# Iterate through them and calculate their dot product
# Print the result
# Exit program

.data
    n: .word 3
    x: .word 4, 2, 3
    y: .word -1, 4, 2
    
.text
    lw s0, n  # Lenght of both arrays
    la s1, x  # Pointer to X 1st element
    la s2, y  # Pointer to Y 1st element
    li a0, 0
    
loop:
    lw t0, 0(s1)
    lw t1, 0(s2)
    mul t0, t0, t1
    add a0, a0, t0
    
    addi s0, s0, -1
    addi s1, s1, 4
    addi s2, s2, 4
    bgt s0, zero, loop
    
    li a7, 1
    ecall
    
    li a7, 10
    ecall
