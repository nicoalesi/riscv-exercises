# Ex30:
# Refactoring of Ex29 to make it work with linked lists

.data
    list:  .word node0
    node0: .word 0, node1
    node1: .word 1, node2
    node2: .word 2, node3
    node3: .word 3, node4
    node4: .word 4, node5
    node5: .word 5, node6
    node6: .word 6, node7
    node7: .word 7, node8
    node8: .word 8, node9
    node9: .word 9, 0
    
.text
    lw t0, list
    li t1, 0
    li a0, 1
    
loop:
    lw t2, 0(t0)
    beq t2, t1, continue
    li a0, 0
    beq zero, zero, end
    
continue:
    addi t1, t1, 1
    lw t0, 4(t0)
    bne t0, zero, loop

end:
    li a7, 1
    ecall
    
    li a7, 10
    ecall
