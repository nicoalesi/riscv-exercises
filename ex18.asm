# Ex18:
# Refactoring of Ex17 so that it uses recursion

.data
    list:  .word node1
    node1: .word 5, node2
    node2: .word 9, node3
    node3: .word -3, node4
    node4: .word 0, node5
    node5: .word 7, 0
    
.text
    lui s0, 0x10010
    lw s1, 0(s0)
    addi a0, s1, 0
    jal ra, sum
    
    addi a7, zero, 1
    ecall
    
    addi a7, zero, 10
    ecall
    
sum:
    beq a0, zero, return
    addi sp, sp, -8
    sw ra, 0(sp)
    lw t0, 0(a0)
    sw t0, 4(sp)
    lw a0, 4(a0)
    jal ra, sum
    lw t0, 4(sp)
    add a0, a0, t0
    lw ra, 0(sp)
    addi sp, sp, 8
    
return:
    jalr zero, ra, 0
