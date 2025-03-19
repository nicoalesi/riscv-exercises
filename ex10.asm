# Ex10:
#

.data
    .word 9
    .word 12, 9, -23, 0, 39, 3, 4, 1, 9
    
.text
    lui t0, 0x10010
    lw t1, 0(t0)
    addi t0, t0, 4
    lw a0, 0(t0)
    addi t1, t1, -1
    
loop:
    addi t1, t1, -1
    addi t0, t0, 4
    lw t2, 0(t0)
    ble t2, a0, end
    addi a0, t2, 0
    
end:
    bgt t1, zero, loop
    
    addi a7, zero, 1
    ecall
    
    addi a7, zero, 10
    ecall
