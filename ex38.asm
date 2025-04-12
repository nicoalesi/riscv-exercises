# Ex38:
# Load the number of nodes to skip (x)
# Iterate through the remaining nodes (if there are any)
# Calculate the sum
# Print the result
# Exit program

.data
    x:     .word 5
    list:  .word node1
    node1: .word 4, node2
    node2: .word -2, node3
    node3: .word 3, node4
    node4: .word 4, node5
    node5: .word 4, node6
    node6: .word 3, node7
    node7: .word 1, 0
    
.text
    lw s0, x
    lw t0, list
    li a0, 0
    
skip:
    beq t0, zero, end
    lw t0, 4(t0)
    addi s0, s0, -1
    bne s0, zero, skip
    
    beq t0, zero, end
    
sum:
    lw t1, 0(t0)
    add a0, a0, t1
    lw t0, 4(t0)
    bne t0, zero, sum
    
end:
    li a7, 1
    ecall
    
    li a7, 10
    ecall
