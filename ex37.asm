# Ex37:
# Load two indexes (x)(y) such that 0 <= x <= y < n
# Iterate through the array (v)
# Calculate the sum of the elements from x to y
# Print the result
# Exit program

.data
    n: .word 7
    v: .word 4, -2, 3, 4, 4, 3, 1
    x: .word 1
    y: .word 5
    
.text
    lw s0, x
    lw s1, y
    la s2, v
    li a0, 0
    
    li t0, 4
    mul t0, s0, t0
    add s2, s2, t0
    
loop:
    lw t0, 0(s2)
    add a0, a0, t0
    addi s0, s0, 1
    addi s2, s2, 4
    ble s0, s1, loop
    
    li a7, 1
    ecall
    
    li a7, 10
    ecall
