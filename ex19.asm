# Ex19:
# Load a pointer to the root of a binary tree
# Recursively calculate the sum of the values of all its nodes
# Print the sum
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
    lui a0, 0x10010
    jal ra, sum
    
    addi a7, zero, 1
    ecall
    
    addi a7, zero, 10
    ecall
    
sum:
    lw t0, 0(a0)  # Value
    lw t1, 4(a0)  # Left child
    lw t2, 8(a0)  # Right child
    
    addi sp, sp, -12
    sw ra, 0(sp)
    sw t0, 4(sp)
    sw t2, 8(sp)
    
    beq t1, zero, next
    addi a0, t1, 0
    jal ra, sum
    lw t0, 4(sp)
    add t0, t0, a0
    sw t0, 4(sp)
    
    lw t2, 8(sp)
    
next:
    beq t2, zero, body
    addi a0, t2, 0
    jal ra, sum
    lw t0, 4(sp)
    add t0, t0, a0
    
body:
    lw ra, 0(sp)
    addi sp, sp, 12
    
    addi a0, t0, 0
    jalr zero, ra, 0
