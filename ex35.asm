# Ex35:
# Load the length of the array (n)
# Iterate through the array (v)
# If all elements are less than a value (y) print 1, otherwise 0
# Exit program

.data
    n: .word 10
    v: .word 4, -2, 3, 4, 4, 3, 1, 0, -2, 10
    x: .word 5
    
.text
    lw t0, n
    la t1, v
    lw s0, x
    li a0, 1
    
loop:
    lw t2, 0(t1)
    blt t2, s0, end
    li a0, 0
    j print
    
end:
    addi t0, t0, -1
    addi t1, t1, 4
    bgt t0, zero, loop

print:
    li a7, 1
    ecall
    
    li a7, 10
    ecall
