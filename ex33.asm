# Ex33:
# Load the length of the array (n)
# Load 2 values to search (x)(y)
# Iterate through the array and count their appearances
# Print the result
# Exit program

.data
    n: .word 10
    v: .word 0, 1, 3, 4, 2, 3, 1, -2, 7, 3
    x: .word 3
    y: .word 4
    
.text
    lw t0, n
    la t1, v
    lw s0, x
    lw s1, y
    li a0, 0
    
loop:
    lw t2, 0(t1)
    bne t2, s0, second
    addi a0, a0, 1
    j end
    
second:
    bne t2, s1, end
    addi a0, a0, 1

end:
    addi t0, t0, -1
    addi t1, t1, 4
    bgt t0, zero, loop
    
    li a7, 1
    ecall
    
    li a7, 10
    ecall
