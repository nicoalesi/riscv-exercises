# Ex24:
# Load the pointer to the root of a binary tree
# Calculate recursively its depth
# Print the result
# Exit program

# Binary tree:
#          4
#      3       9
#  -1       0     17
#                    -5

.data
    root:  .word 4, node1, node2
    node1: .word 3, node3, 0
    node2: .word 9, node4, node5
    node3: .word -1, 0, 0
    node4: .word 0, 0, 0
    node5: .word 17, 0, node6
    node6: .word -5, 0, 0

.text
    la a0, root
    jal ra, depth
    
    li a7, 1
    ecall
    
    li a7, 10
    ecall
    
depth:
    bne a0, zero, body
    jalr zero, ra, 0
    
body:
    lw t0, 4(a0)  # Left child
    lw t1, 8(a0)  # Right child
    
    addi sp, sp, -8
    sw ra, 0(sp)
    sw t1, 4(sp)
    
    addi a0, t0, 0
    jal ra, depth
    lw t1, 4(sp)
    sw a0, 4(sp)
    
    addi a0, t1, 0
    jal ra, depth
    
    lw ra, 0(sp)
    lw t0, 4(sp)
    addi sp, sp, 8
    
    bgt a0, t0, right
    addi a0, t0, 1
    beq zero, zero, end
    
right:
    addi a0, a0, 1
    
end:
    jalr zero, ra, 0
