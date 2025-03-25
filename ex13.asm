# Ex13:
# Ask the user for 2 numbers to multiply
# Pass them to a function
# The function calculates the multiplication
# Return the result
# Print the result
# Exit program

.data
    .asciz "First number: "
    .asciz "Second number: "
    .asciz "Result: "
    
.text
    lui t0, 0x10010
    
    addi a0, t0, 0
    addi a7, zero, 4
    ecall
    addi a7, zero, 5
    ecall
    addi t1, a0, 0
    
    addi a0, t0, 15
    addi a7, zero, 4
    ecall
    addi a7, zero, 5
    ecall
    addi t2, a0, 0
    
    addi a0, t1, 0
    addi a1, t2, 0
    jal ra, multiply
    
    addi t4, a0, 0
    
    addi a0, t0, 31
    addi a7, zero, 4
    ecall
    addi a0, t4, 0
    addi a7, zero, 1
    ecall
    
    addi a7, zero, 10
    ecall
    
multiply:
    addi t3, zero, 0
loop:
    add t3, t3, a0
    addi a1, a1, -1
    bgt a1, zero, loop
    
    addi a0, t3, 0
    jalr zero, ra, 0
