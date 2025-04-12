# Ex41:
# Load the length of 2 arrays (n)
# Iterate through them antiparallelly
# Print 1 if one is the inverse of the other
# Print 0 otherwise
# Exit program

.data
    n: .word 7
    x: .word 4, 2, 3, 4, 4, 3, 1
    y: .word 1, 3, 4, 4, 3, 2, 4
    
.text
    lw t0, n  # Length of both arrays
    la t1, x  # Pointer to X 1st element
    la t2, y
    li a0, 1
    
    li t3, 4
    mul t3, t3, t0
    addi t3, t3, -4

    add t2, t2, t3  # Pointer to Y last element
    
loop:
    lw s0, 0(t1)
    lw s1, 0(t2)
    
    beq s0, s1, skip
    li a0, 0
    j end
    
skip:
    addi t1, t1, 4
    addi t2, t2, -4
    addi t0, t0, -1
    bgt t0, zero, loop

end:
    li a7, 1
    ecall
    
    li a7, 10
    ecall
