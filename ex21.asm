# Ex21:
# Refactoring of Ex20 so that it uses recursion

.data
    x:     .word 4
    list:  .word nodo1
    nodo1: .word 13, nodo2
    nodo2: .word 2, nodo3
    nodo3: .word 4, nodo4
    nodo4: .word 7, nodo5
    nodo5: .word -1, nodo6
    nodo6: .word 4, 0
    
.text
    lw a0, x
    lw a1, list
    jal ra, count
    
    li a7, 1
    ecall
    
    li a7, 10
    ecall
    
count:
    bne a1, zero, body
    li a0, 0
    jalr zero, ra, 0
    
body:
    lw t0, 0(a1)  # Value
    lw t1, 4(a1)  # Next node
    li t2, 0
    
    bne a0, t0, skip
    addi t2, t2, 1
    
skip:
    addi, sp, sp, -8
    sw ra, 0(sp)
    sw t2, 4(sp)
    
    addi a1, t1, 0
    jal ra, count
    
    lw ra, 0(sp)
    lw t0, 4(sp)
    addi sp, sp, 8
    
    add a0, a0, t0
    jalr zero, ra, 0
