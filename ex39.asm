# Ex39:
# Load the lengths of 2 arrays (n)(m)
# Iterate through all the elements of the 2 arrays (x)(y)
# Compare every element of x with every element of y
# Print 1 if every element of x is greater than or equal to every element of y
# Print 0 otherwise
# Exit program

.data
    n: .word 7
    x: .word 4, 2, 3, 4, 4, 3, 1
    m: .word 4
    y: .word -1, -4, -9, 1
    
.text
    lw s0, n  # X length
    la s1, x  # Pointer to X 1st element
    
    li a0, 1
    
outer_loop:
    lw t0, 0(s1)
    
    lw s2, m  # Y length
    la s3, y  # Pointer to Y 1st element
    
inner_loop:
    lw t1, 0(s3)
    bge t0, t1, skip
    li a0, 0
    j end
    
skip:
    addi s2, s2, -1
    addi s3, s3, 4
    bgt s2, zero, inner_loop
    
    addi s0, s0, -1
    addi s1, s1, 4
    bgt s0, zero, outer_loop

end:
    li a7, 1
    ecall
    
    li a7, 10
    ecall
