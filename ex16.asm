# Ex16:
# Refactoring of Ex15 so that it uses recursion

.data
    list:  .word node1
    node1: .word 5, node2
    node2: .word 9, node3
    node3: .word -2, node4
    node4: .word 0, node5
    node5: .word 7, 0
    
.text
    lui s0, 0x10010
    lw s1, 0(s0)
    addi a0, s1, 0
    jal ra, height
    
    addi a7, zero, 1
    ecall
    
    addi a7, zero, 10
    ecall
    
height:
    beq a0, zero, return
    addi sp, sp, -4
    sw ra, 0(sp)
    lw a0, 4(a0)
    jal ra, height
    addi a0, a0, 1
    lw ra, 0(sp)
    addi sp, sp, 4
    
return: 
    jalr zero, ra, 0
