# Ex27:
# Load the number of elements of an array (n)
# Iterate through the array (x)
# Count the number of items less than a certain value (y)
# Print the result
# Exit program

.data
    n: .word 32
    x: .word 3, 7, 1, 7, 8, 0, 0, -2, -3, 5, 11, 13, 19, -1, -1, -2, -3, 8, 20, 30, -11, -10, -9, 3, 8, 99, -71, 1, 2, 3, 4, 5
    y: .word 7
    
.text
    lw t0, n
    lw t1, y
    la t2, x
    li a0, 0
    
loop:
    lw t3, 0(t2)
    bge t3, t1, skip
    addi a0, a0, 1
    
skip:
    addi t2, t2, 4
    addi t0, t0, -1
    bgt t0, zero, loop
    
    li a7, 1
    ecall
    
    li a7, 10
    ecall
