# Ex28:
# Load the size of the array (n)
# Iterate through the array (x)
# Print 1 if x[i] = i, otherwise print 0
# Exit program

.data
    n: .word 10
    x: .word 5, 2, 2, 6, 8, 0, -1, 7, 2, 10
    
.text
    lw t0, n
    la t1, x
    li t2, 0
    
loop:
    lw t3, 0(t1)
    beq t2, t3, equal
    
    li a0, 0
    beq zero, zero, print
    
equal:
    li a0, 1
    
print:
    li a7, 1
    ecall
    
    addi t2, t2, 1
    addi t1, t1, 4
    blt t2, t0, loop
    
    li a7, 10
    ecall
