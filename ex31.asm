# Ex31:
# Load the lenght of the array (n)
# Check the length
# Iterate through the array (x)
# If x[i] <= x[j] for all i < j, print 1, otherwise print 0
# Exit program

.data
    n: .word 8
    x: .word -5, -3, 0, 3, 4, 5, 9, 11
    
.text
    lw t0, n
    li a0, 1
    
    ble t0, a0, end
    la t1, x
    addi t1, t1, 4
    li t2, 1

loop:
    lw t3, -4(t1)
    lw t4, 0(t1)
    ble t3, t4, continue
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
