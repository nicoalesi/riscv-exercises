# Ex12:
# Load a number from the data segment
# Pass it to a function
# The function counts the number of 1s in its binary representation
# Return the result
# Print the result
# Exit program

.data
    .word 255
    
.text
    lui t0, 0x10010
    lw a0, 0(t0)
    jal ra, count
    
    addi a7, zero, 1
    ecall
    
    addi a7, zero, 10
    ecall
    
count:
    addi t0, zero, 0
loop:
    andi t1, a0, 1
    beq t1, zero, skip
    addi t0, t0, 1
skip:
    srli a0, a0, 1
    bgt a0, zero, loop
    
    addi a0, t0, 0
    jalr zero, ra, 0
