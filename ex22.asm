# Ex22:
# Load the address of the root of a binary tree
# Iterate through all the nodes recursively
# Count the number of all of them
# Print the result
# Exit program

# Binary tree:
#          4
#      3       9
#  -1       0     17

.data
    root:  .word 4, node1, node2
    node1: .word 3, node3, 0
    node2: .word 9, node4, node5
    node3: .word -1, 0, 0
    node4: .word 0, 0, 0
    node5: .word 17, 0, 0
    
.text
    la a0, root
    jal ra, count
    
    li a7, 1
    ecall
    
    li a7, 10
    ecall

count:
    bne a0, zero, body
    jalr zero, ra, 0

body:
    lw t1, 4(a0)  # Left child
    lw t2, 8(a0)  # Right child
    
    addi sp, sp, -8
    sw ra, 0(sp)
    sw t2, 4(sp)
    
    addi a0, t1, 0
    jal ra, count
    lw t2, 4(sp)
    sw a0, 4(sp)
    
    addi a0, t2, 0
    jal ra, count
    lw ra, 0(sp)
    lw t1, 4(sp)
    addi sp, sp, 8
    
    add a0, a0, t1
    addi a0, a0, 1
    jalr zero, ra, 0
