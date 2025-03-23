# Ex11:
# Ask the user for their name
# Print a greeting
# Exit program

.data
    .asciz "What's your name? "
    .asciz "Hello "
    
.text
    lui t0, 0x10010
    addi a0, t0, 0
    addi a7, zero, 4
    ecall
    
    addi a0, t0, 26
    addi a1, zero, 30
    addi a7, zero, 8
    ecall
    
    addi a0, t0, 19
    addi a7, zero, 4
    ecall
    
    addi a0, t0, 26
    addi a7, zero, 4
    ecall
    
    addi a7, zero, 10
    ecall
