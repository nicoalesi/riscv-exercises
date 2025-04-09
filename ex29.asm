# Ex29:
# Load the size of the array (n)
# Iterate through the array (x)
# Print 1 if every x[i] = i, otherwise print 0
# Exit program

.data
    n: .word 10
    x: .word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9

.text
    lw t0, n
    la t1, x
    li t2, 0
    li a0, 1
    
loop:
    lw t3, 0(t1)
    beq t3, t2, continue
    li a0, 0
    beq zero, zero, end
    
continue:
    addi t2, t2, 1
    addi t1, t1, 4
    blt t2, t0, loop

end:
    li a7, 1
    ecall
    
    li a7, 10
    ecall
