# Ex15:
# Given a non-empty linked list
# Load the nodes from the data segment
# Compute the linked list's length
# Print the result
# Exit program

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
    addi a0, zero, 0
    
loop:
    addi a0, a0, 1
    lw s1, 4(s1)
    bne s1, zero, loop
    
    addi a7, zero, 1
    ecall
    
    addi a7, zero, 10
    ecall
