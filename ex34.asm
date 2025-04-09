# Ex34:
# Iterate through a linked list
# Calculate the sum of positive values
# Print the result
# Exit program

.data
    list:  .word node1
    node1: .word 4, node2
    node2: .word -2, node3
    node3: .word 3, node4
    node4: .word 4, node5
    node5: .word -4, node6
    node6: .word 3, node7
    node7: .word 1, 0
    
.text
    lw t0, list
    li a0, 0
    
loop:
    lw t1, 0(t0)
    ble t1, zero, end
    add a0, a0, t1
    
end:
    lw t0, 4(t0)
    bne t0, zero, loop
    
    li a7, 1
    ecall
    
    li a7, 10
    ecall
