# Ex14:
# Load a value from the data segment
# Calculate the factorial of that value using recursion
# Print result
# Exit program

.data
    .word 7
    
.text
    lui t0, 0x10010
    lw a0, 0(t0)
    jal ra, factorial
    
    addi a7, zero, 1
    ecall
    
    addi a7, zero, 10
    ecall
    
factorial:
    bne a0, zero, body
    addi a0, zero, 1
    jalr zero, ra, 0
    
body:
    addi sp, sp, -8
    sw ra, 0(sp)
    sw a0, 4(sp)
    addi a0, a0, -1
    jal ra, factorial
    lw t0, 4(sp)
    mul a0, a0, t0
    lw ra, 0(sp)
    addi sp, sp, 8
    jalr zero, ra, 0
