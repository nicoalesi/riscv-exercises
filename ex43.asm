# Ex43:
# Load num of rows and columns of a matrix (n)(m)
# Load the column to calculate the sum of (1 <= j <= m)
# Iterate through that column and compute the sum
# Print the result
# Exit program

.data
    n: .word 4
    m: .word 5
    j: .word 3
    a: .word 2, 3, 4, 6, 0
       .word 1, 9, 0, 0, 2
       .word 5, 2, 7, 8, 1
       .word 1, 1, 2, 9, 1
       
.text
    lw s0, n
    la s1, a
    li a0, 0
    
    li t0, 4
    lw t1, m
    
    lw t2, j
    mul t2, t2, t0
    addi t2, t2, -4
    add s1, s1, t2

    mul t1, t1, t0
            
loop:
    lw t0, 0(s1)
    add a0, a0, t0
    add s1, s1, t1
    addi s0, s0, -1
    bgt s0, zero, loop
    
    li a7, 1
    ecall
    
    li a7, 10
    ecall
