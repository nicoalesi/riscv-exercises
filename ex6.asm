# Ex6:
# Assume that the number in the data segment is greater than 1
# Load its value from the data segment
# Print a countdown from that number to 1
# Exit program

.data
    .word 13
    
.text
    lui x5, 0x10010
    lw x10, 0(x5)
    
loop:
    addi x17, x0, 1
    ecall
    addi x10, x10, -1
    bgt x10, x0, loop
    
    addi x17, x0, 10
    ecall
