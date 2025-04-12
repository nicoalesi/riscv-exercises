# Ex40:
# Refactoring of Ex39 to solve the same problem in a more efficient way
# (Compare min(x) with max(y))

.data
    n: .word 7
    x: .word 4, 2, 3, 4, 4, 3, 1
    m: .word 4
    y: .word -1, -4, -9, 2
    
.text
    lw t0, n  # X length
    la t1, x  # Pointer to X 1st element
    lw s0, 0(t1)
    addi t1, t1, 4
    
loop_x:
    lw t2, 0(t1)
    bge t2, s0, skip_x
    addi s0, t2, 0
    
skip_x:
    addi t0, t0, -1
    addi t1, t1, 4
    bgt t0, zero, loop_x
    
    lw t0, m  # Y length
    la t1, y  # Pointer to Y 1st element
    lw s1, 0(t1)
    addi t1, t1, 4
    
loop_y:
    lw t2, 0(t1)
    ble t2, s1, skip_y
    addi s1, t2, 0
    
skip_y:
    addi t0, t0, -1
    addi t1, t1, 4
    bgt t0, zero, loop_y
    
    blt s0, s1, false
    li a0, 1
    j end
    
false:
    li a0, 0
    
end:
    li a7, 1
    ecall
    
    li a7, 10
    ecall
