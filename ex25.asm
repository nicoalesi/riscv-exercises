# Ex25
# Load the size and the pointer to the first element of an array
# Find the maximum value in the array recursively
# Print it
# Exit program

.data
    .word 8
    .word 0, 2, -2, 34, 2, 1, 9, 71
    
.text
    lui t0, 0x10010
    lw a0, 0(t0)
    addi a1, t0, 4
    jal ra, max
    
    li a7, 1
    ecall
    
    li a7, 10
    ecall

max:
    addi a0, a0, -1
    bne a0, zero, body
    lw a0, 0(a1)
    jalr zero, ra, 0
    
body:
    lw t0, 0(a1)  # Current value
    addi sp, sp, -8
    sw ra, 0(sp)
    sw t0, 4(sp)
    
    addi a1, a1, 4
    jal ra, max
    
    lw ra, 0(sp)
    lw t0, 4(sp)
    addi sp, sp, 8
    
    bge a0, t0, end
    addi a0, t0, 0
    
end:
    jalr zero, ra, 0
