# Ex44:
# Iterate through a linked list (x)
# Print 1 if it's monotonically increasing
# Print 0 otherwise
# Exit program

.data
    x:     .word node1
    node1: .word 4, node2
    node2: .word 7, node3
    node3: .word 7, node4
    node4: .word 12, node5
    node5: .word 21, 0
    
.text
    lw t0, x
    lw t1, 4(t0)
    li a0, 1
    
loop:
    lw t2, 0(t0)
    lw t3, 0(t1)
    bge t3, t2, skip
    li a0, 0
    j end
    
skip:
    lw t0, 4(t0)
    lw t1, 4(t1)
    bne t1, zero, loop

end:
    li a7, 1
    ecall
    
    li a7, 10
    ecall
