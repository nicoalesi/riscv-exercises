# Ex32:
# Load the size of two different arrays (n)(m)
# Use a nested while loop to see if they have a common value
# If so print 1, otherwise print 0
# Exit program

.data
    n: .word 10
    x: .word 3, 4, 6, 1, 0, -2, -3, 11, 9, 9
    m: .word 9
    y: .word 2, 5, 7, -1, -7, 8, -5, 10, 0
    
.text
    lw s0, n  # X length
    lw s1, m  # Y length
    la s2, x  # Pointer to X 1st element
    la s3, y  # Pointer to Y 1st element
    
    li a0, 0
    
outer_loop:
    lw t0, 0(s2)
    li t2, 0
    addi t3, s3, 0

inner_loop:
    lw t1, 0(t3)
    bne t1, t0, skip
    li a0, 1
    beq zero, zero, end
    
skip:
    addi t2, t2 1
    addi t3, t3, 4
    blt t2, s1, inner_loop

    addi s0, s0, -1
    addi s2, s2, 4
    bgt s0, zero, outer_loop

end:
    li a7, 1
    ecall
    
    li a7, 10
    ecall
