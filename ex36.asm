# Ex36:
# Load the pointer to a linked list
# Compute the sum of all the values in odd positions
# Print the result
# Exit program

.data
    list:  .word node0
    node0: .word 4, node1
    node1: .word -2, node2
    node2: .word 3, node3
    node3: .word 4, node4
    node4: .word 4, node5
    node5: .word 3, node6
    node6: .word 1, 0
    
.text
    lw t0, list
    beq t0, zero, end
    lw t0, 4(t0)
    beq t0, zero, end
    li a0, 0
    
loop:
    lw t1, 0(t0)
    add a0, a0, t1
    lw t0, 4(t0)
    beq t0, zero, end
    lw t0, 4(t0)
    bne t0, zero, loop
    
end:
    li a7, 1
    ecall
    
    li a7, 10
    ecall
