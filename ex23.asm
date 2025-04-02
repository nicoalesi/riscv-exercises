# Ex23:
# Load the pointer to a linked list from the data segment
# Recursively reverse the list
# Exit program

.data
    list:  .word node1
    node1: .word 5, node2
    node2: .word 9, node3
    node3: .word -2, node4
    node4: .word 0, node5
    node5: .word 7, 0

.text
    lw a0, list
    jal ra, reverse
    
    li a7, 10
    ecall

reverse:
    bne a0, zero, base
    jalr zero, ra, 0
    
base:
    lw t0, 4(a0)
    bne t0, zero, body
    la t1, list
    sw a0, 0(t1)
    jalr, zero, ra, 0
    
body:
    addi sp, sp, -8
    sw ra, 0(sp)
    sw a0, 4(sp)
    
    lw a0, 4(a0)
    jal ra, reverse
    
    lw t0, 4(sp)
    lw t1, 4(t0)
    sw t0, 4(t1)
    sw zero, 4(t0)
    
    lw ra, 0(sp)
    addi sp, sp, 8
    jalr zero, ra, 0
