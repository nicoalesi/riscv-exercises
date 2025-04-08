# Ex26:
# Load a range from the data segment
# Print recursively all the odd numbers less than the range
# Exit program

.data
    range: .word 13

.text
    lw a0, range
    jal ra, print
    
    li a7, 10
    ecall
    
print:
    bgt a0, zero, body
    jalr zero, ra, 0
    
body:
    andi t0, a0, 1
    addi sp, sp, -4
    sw ra, 0(sp)
    
    bne t0, zero, odd
    addi a0, a0, -1
    jal ra, print
    jalr zero, ra, 0
    
odd:
    li a7, 1
    ecall
    
    addi t0, a0, 0
    
    li a0, 10
    li a7, 11
    ecall
    
    addi a0, t0, 0
    addi a0, a0, -2
    jal ra, print
    
    lw ra, 0(sp)
    addi sp, sp, 4
    jalr zero, ra, 0
