# Ex20:
# Load a value to search from the data segment
# Iterate through the linked list
# Count the number of appearences of the value
# Print the result
# Exit program

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
    lw t0, x
    lw t1, list
    addi a0, zero, 0
    
    beq t1, zero, end
    
loop:
    lw t2, 0(t1)
    lw t1, 4(t1)
    
    bne t2, t0, condition
    addi a0, a0, 1
    
condition:
    bne t1, zero, loop
    
end:
    addi a7, zero, 1
    ecall
    
    addi a7, zero, 10
    ecall
