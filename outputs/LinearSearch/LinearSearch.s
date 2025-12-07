    .text
    .globl main
main:
    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 104
    li $s6, 12
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $s6
    addi $v0, $0, 9
    syscall
    move $s7, $v0
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    move $s0, $s7
    li $t0, 16
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $t0
    addi $v0, $0, 9
    syscall
    move $t1, $v0
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    move $s1, $t1
    sw $s1, 0($s0)
    la $t2, LS_ved_Start
    sw $t2, 0($s1)
    la $t3, LS_ved_Print
    sw $t3, 4($s1)
    la $t4, LS_ved_Search
    sw $t4, 8($s1)
    la $t5, LS_ved_Init
    sw $t5, 12($s1)
    li $t6, 0
    sw $t6, 4($s0)
    li $t7, 0
    sw $t7, 8($s0)
    li $t8, 10
    move $s2, $t8
    lw $s3, 0($s0)
    lw $s4, 0($s3)
    sw $a0, 52($sp)
    sw $a1, 48($sp)
    sw $a2, 44($sp)
    sw $a3, 40($sp)
    sw $t0, 36($sp)
    sw $t1, 32($sp)
    sw $t2, 28($sp)
    sw $t3, 24($sp)
    sw $t4, 20($sp)
    sw $t5, 16($sp)
    sw $t6, 12($sp)
    sw $t7, 8($sp)
    sw $t8, 4($sp)
    sw $t9, 0($sp)
    move $a0, $s0
    move $a1, $s2
    jalr $s4
    lw $a0, 52($sp)
    lw $a1, 48($sp)
    lw $a2, 44($sp)
    lw $a3, 40($sp)
    lw $t0, 36($sp)
    lw $t1, 32($sp)
    lw $t2, 28($sp)
    lw $t3, 24($sp)
    lw $t4, 20($sp)
    lw $t5, 16($sp)
    lw $t6, 12($sp)
    lw $t7, 8($sp)
    lw $t8, 4($sp)
    lw $t9, 0($sp)
    move $t9, $v0
    move $s5, $t9
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $s5
    addi $v0, $0, 1
    syscall
    la $a0, newl
    li $v0, 4
    syscall
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    lw $ra, -8($fp)
    move $sp, $fp
    lw $fp, -4($fp)
    jr $ra

    .text
    .globl LS_ved_Start
LS_ved_Start:

    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 184
    sw $s0, 84($sp)
    sw $s1, 80($sp)
    sw $s2, 76($sp)
    sw $s3, 72($sp)
    sw $s4, 68($sp)
    sw $s5, 64($sp)
    sw $s6, 60($sp)
    sw $s7, 56($sp)
    sw $a0, 164($sp)
    move $s1, $a1
    lw $v1, 164($sp)
    lw $s2, 0($v1)
    lw $s3, 12($s2)
    sw $a0, 52($sp)
    sw $a1, 48($sp)
    sw $a2, 44($sp)
    sw $a3, 40($sp)
    sw $t0, 36($sp)
    sw $t1, 32($sp)
    sw $t2, 28($sp)
    sw $t3, 24($sp)
    sw $t4, 20($sp)
    sw $t5, 16($sp)
    sw $t6, 12($sp)
    sw $t7, 8($sp)
    sw $t8, 4($sp)
    sw $t9, 0($sp)
    lw $v0, 164($sp)
    move $a0, $v0
    move $a1, $s1
    jalr $s3
    lw $a0, 52($sp)
    lw $a1, 48($sp)
    lw $a2, 44($sp)
    lw $a3, 40($sp)
    lw $t0, 36($sp)
    lw $t1, 32($sp)
    lw $t2, 28($sp)
    lw $t3, 24($sp)
    lw $t4, 20($sp)
    lw $t5, 16($sp)
    lw $t6, 12($sp)
    lw $t7, 8($sp)
    lw $t8, 4($sp)
    lw $t9, 0($sp)
    move $t9, $v0
    move $s4, $t9
    lw $v1, 164($sp)
    lw $s5, 0($v1)
    lw $s6, 4($s5)
    sw $a0, 52($sp)
    sw $a1, 48($sp)
    sw $a2, 44($sp)
    sw $a3, 40($sp)
    sw $t0, 36($sp)
    sw $t1, 32($sp)
    sw $t2, 28($sp)
    sw $t3, 24($sp)
    sw $t4, 20($sp)
    sw $t5, 16($sp)
    sw $t6, 12($sp)
    sw $t7, 8($sp)
    sw $t8, 4($sp)
    sw $t9, 0($sp)
    lw $v0, 164($sp)
    move $a0, $v0
    jalr $s6
    lw $a0, 52($sp)
    lw $a1, 48($sp)
    lw $a2, 44($sp)
    lw $a3, 40($sp)
    lw $t0, 36($sp)
    lw $t1, 32($sp)
    lw $t2, 28($sp)
    lw $t3, 24($sp)
    lw $t4, 20($sp)
    lw $t5, 16($sp)
    lw $t6, 12($sp)
    lw $t7, 8($sp)
    lw $t8, 4($sp)
    lw $t9, 0($sp)
    move $s0, $v0
    move $s7, $s0
    li $t8, 9999
    move $t0, $t8
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $t0
    addi $v0, $0, 1
    syscall
    la $a0, newl
    li $v0, 4
    syscall
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    li $t7, 8
    move $t1, $t7
    lw $v1, 164($sp)
    lw $t2, 0($v1)
    lw $t3, 8($t2)
    sw $a0, 52($sp)
    sw $a1, 48($sp)
    sw $a2, 44($sp)
    sw $a3, 40($sp)
    sw $t0, 36($sp)
    sw $t1, 32($sp)
    sw $t2, 28($sp)
    sw $t3, 24($sp)
    sw $t4, 20($sp)
    sw $t5, 16($sp)
    sw $t6, 12($sp)
    sw $t7, 8($sp)
    sw $t8, 4($sp)
    sw $t9, 0($sp)
    lw $v0, 164($sp)
    move $a0, $v0
    move $a1, $t1
    jalr $t3
    lw $a0, 52($sp)
    lw $a1, 48($sp)
    lw $a2, 44($sp)
    lw $a3, 40($sp)
    lw $t0, 36($sp)
    lw $t1, 32($sp)
    lw $t2, 28($sp)
    lw $t3, 24($sp)
    lw $t4, 20($sp)
    lw $t5, 16($sp)
    lw $t6, 12($sp)
    lw $t7, 8($sp)
    lw $t8, 4($sp)
    lw $t9, 0($sp)
    move $t5, $v0
    move $t4, $t5
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $t4
    addi $v0, $0, 1
    syscall
    la $a0, newl
    li $v0, 4
    syscall
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    li $t6, 12
    move $v1, $t6
    sw $v1, 116($sp)
    lw $v1, 164($sp)
    lw $v0, 0($v1)
    sw $v0, 112($sp)
    lw $v1, 112($sp)
    lw $v0, 8($v1)
    sw $v0, 120($sp)
    lw $v1, 120($sp)
    sw $a0, 52($sp)
    sw $a1, 48($sp)
    sw $a2, 44($sp)
    sw $a3, 40($sp)
    sw $t0, 36($sp)
    sw $t1, 32($sp)
    sw $t2, 28($sp)
    sw $t3, 24($sp)
    sw $t4, 20($sp)
    sw $t5, 16($sp)
    sw $t6, 12($sp)
    sw $t7, 8($sp)
    sw $t8, 4($sp)
    sw $t9, 0($sp)
    lw $v0, 164($sp)
    move $a0, $v0
    lw $v0, 116($sp)
    move $a1, $v0
    jalr $v1
    lw $a0, 52($sp)
    lw $a1, 48($sp)
    lw $a2, 44($sp)
    lw $a3, 40($sp)
    lw $t0, 36($sp)
    lw $t1, 32($sp)
    lw $t2, 28($sp)
    lw $t3, 24($sp)
    lw $t4, 20($sp)
    lw $t5, 16($sp)
    lw $t6, 12($sp)
    lw $t7, 8($sp)
    lw $t8, 4($sp)
    lw $t9, 0($sp)
    move $v1, $v0
    sw $v1, 108($sp)
    lw $v1, 108($sp)
    move $v1, $v1
    sw $v1, 124($sp)
    lw $v1, 124($sp)
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $v1
    addi $v0, $0, 1
    syscall
    la $a0, newl
    li $v0, 4
    syscall
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    li $v1, 17
    sw $v1, 104($sp)
    lw $v1, 104($sp)
    move $v1, $v1
    sw $v1, 132($sp)
    lw $v1, 164($sp)
    lw $v0, 0($v1)
    sw $v0, 128($sp)
    lw $v1, 128($sp)
    lw $v0, 8($v1)
    sw $v0, 160($sp)
    lw $v1, 160($sp)
    sw $a0, 52($sp)
    sw $a1, 48($sp)
    sw $a2, 44($sp)
    sw $a3, 40($sp)
    sw $t0, 36($sp)
    sw $t1, 32($sp)
    sw $t2, 28($sp)
    sw $t3, 24($sp)
    sw $t4, 20($sp)
    sw $t5, 16($sp)
    sw $t6, 12($sp)
    sw $t7, 8($sp)
    sw $t8, 4($sp)
    sw $t9, 0($sp)
    lw $v0, 164($sp)
    move $a0, $v0
    lw $v0, 132($sp)
    move $a1, $v0
    jalr $v1
    lw $a0, 52($sp)
    lw $a1, 48($sp)
    lw $a2, 44($sp)
    lw $a3, 40($sp)
    lw $t0, 36($sp)
    lw $t1, 32($sp)
    lw $t2, 28($sp)
    lw $t3, 24($sp)
    lw $t4, 20($sp)
    lw $t5, 16($sp)
    lw $t6, 12($sp)
    lw $t7, 8($sp)
    lw $t8, 4($sp)
    lw $t9, 0($sp)
    move $v1, $v0
    sw $v1, 100($sp)
    lw $v1, 100($sp)
    move $v1, $v1
    sw $v1, 156($sp)
    lw $v1, 156($sp)
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $v1
    addi $v0, $0, 1
    syscall
    la $a0, newl
    li $v0, 4
    syscall
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    li $v1, 50
    sw $v1, 96($sp)
    lw $v1, 96($sp)
    move $v1, $v1
    sw $v1, 152($sp)
    lw $v1, 164($sp)
    lw $v0, 0($v1)
    sw $v0, 148($sp)
    lw $v1, 148($sp)
    lw $v0, 8($v1)
    sw $v0, 144($sp)
    lw $v1, 144($sp)
    sw $a0, 52($sp)
    sw $a1, 48($sp)
    sw $a2, 44($sp)
    sw $a3, 40($sp)
    sw $t0, 36($sp)
    sw $t1, 32($sp)
    sw $t2, 28($sp)
    sw $t3, 24($sp)
    sw $t4, 20($sp)
    sw $t5, 16($sp)
    sw $t6, 12($sp)
    sw $t7, 8($sp)
    sw $t8, 4($sp)
    sw $t9, 0($sp)
    lw $v0, 164($sp)
    move $a0, $v0
    lw $v0, 152($sp)
    move $a1, $v0
    jalr $v1
    lw $a0, 52($sp)
    lw $a1, 48($sp)
    lw $a2, 44($sp)
    lw $a3, 40($sp)
    lw $t0, 36($sp)
    lw $t1, 32($sp)
    lw $t2, 28($sp)
    lw $t3, 24($sp)
    lw $t4, 20($sp)
    lw $t5, 16($sp)
    lw $t6, 12($sp)
    lw $t7, 8($sp)
    lw $t8, 4($sp)
    lw $t9, 0($sp)
    move $v1, $v0
    sw $v1, 92($sp)
    lw $v1, 92($sp)
    move $v1, $v1
    sw $v1, 140($sp)
    lw $v1, 140($sp)
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $v1
    addi $v0, $0, 1
    syscall
    la $a0, newl
    li $v0, 4
    syscall
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    li $v1, 55
    sw $v1, 88($sp)
    lw $v1, 88($sp)
    move $v1, $v1
    sw $v1, 136($sp)
    lw $v1, 136($sp)
    move $v0, $v1
    lw $s0, 84($sp)
    lw $s1, 80($sp)
    lw $s2, 76($sp)
    lw $s3, 72($sp)
    lw $s4, 68($sp)
    lw $s5, 64($sp)
    lw $s6, 60($sp)
    lw $s7, 56($sp)
    lw $ra, -8($fp)
    move $sp, $fp
    lw $fp, -4($fp)
    jr $ra

    .text
    .globl LS_ved_Print
LS_ved_Print:

    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 140
    sw $s0, 84($sp)
    sw $s1, 80($sp)
    sw $s2, 76($sp)
    sw $s3, 72($sp)
    sw $s4, 68($sp)
    sw $s5, 64($sp)
    sw $s6, 60($sp)
    sw $s7, 56($sp)
    sw $a0, 112($sp)
    li $t5, 1
    move $s2, $t5
    move $v1, $s2
    sw $v1, 116($sp)
L_ved1:
    lw $v1, 112($sp)
    lw $s3, 8($v1)
    li $t6, 1
    move $s4, $t6
    sub $t7, $s3, $s4
    move $s5, $t7
    lw $v0, 116($sp)
    sle $t8, $v0, $s5
    move $s6, $t8
    beqz $s6 L_ved2
    lw $v1, 112($sp)
    lw $s7, 4($v1)
    li $t9, 4
    li $t4, 1
    move $s0, $t4
    lw $v1, 116($sp)
    add $s1, $s0, $v1
    move $t2, $t9
    mult $t2, $s1
    mflo $t3
    add $t0, $s7, $t3
    move $t1, $t0
    lw $v0, 0($t1)
    sw $v0, 100($sp)
    lw $v1, 100($sp)
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $v1
    addi $v0, $0, 1
    syscall
    la $a0, newl
    li $v0, 4
    syscall
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    li $v1, 1
    sw $v1, 96($sp)
    lw $v1, 96($sp)
    move $v1, $v1
    sw $v1, 104($sp)
    lw $v1, 104($sp)
    lw $v0, 116($sp)
    add $v1, $v0, $v1
    sw $v1, 92($sp)
    lw $v1, 92($sp)
    move $v1, $v1
    sw $v1, 108($sp)
    lw $v1, 108($sp)
    move $v1, $v1
    sw $v1, 116($sp)
    j L_ved1
L_ved2:
    li $v1, 0
    sw $v1, 88($sp)
    lw $v1, 88($sp)
    move $v1, $v1
    sw $v1, 120($sp)
    lw $v1, 120($sp)
    move $v0, $v1
    lw $s0, 84($sp)
    lw $s1, 80($sp)
    lw $s2, 76($sp)
    lw $s3, 72($sp)
    lw $s4, 68($sp)
    lw $s5, 64($sp)
    lw $s6, 60($sp)
    lw $s7, 56($sp)
    lw $ra, -8($fp)
    move $sp, $fp
    lw $fp, -4($fp)
    jr $ra

    .text
    .globl LS_ved_Search
LS_ved_Search:

    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 296
    sw $s0, 84($sp)
    sw $s1, 80($sp)
    sw $s2, 76($sp)
    sw $s3, 72($sp)
    sw $s4, 68($sp)
    sw $s5, 64($sp)
    sw $s6, 60($sp)
    sw $s7, 56($sp)
    sw $a0, 264($sp)
    sw $a1, 268($sp)
    li $s4, 1
    move $s6, $s4
    move $v1, $s6
    sw $v1, 272($sp)
    li $s5, 0
    move $s7, $s5
    li $s0, 0
    move $t0, $s0
    move $v1, $t0
    sw $v1, 276($sp)
L_ved3:
    lw $v1, 264($sp)
    lw $t1, 8($v1)
    li $s1, 1
    move $t2, $s1
    sub $s2, $t1, $t2
    move $t3, $s2
    lw $v0, 272($sp)
    sle $s3, $v0, $t3
    move $t4, $s3
    beqz $t4 L_ved4
    lw $v1, 264($sp)
    lw $v0, 4($v1)
    sw $v0, 176($sp)
    li $t9, 4
    li $t8, 1
    move $t7, $t8
    lw $v1, 272($sp)
    add $t6, $t7, $v1
    move $t5, $t9
    mult $t5, $t6
    mflo $v1
    sw $v1, 180($sp)
    lw $v1, 180($sp)
    lw $v0, 176($sp)
    add $v1, $v0, $v1
    sw $v1, 172($sp)
    lw $v1, 172($sp)
    move $v1, $v1
    sw $v1, 184($sp)
    lw $v1, 184($sp)
    lw $v0, 0($v1)
    sw $v0, 188($sp)
    lw $v1, 188($sp)
    move $v1, $v1
    sw $v1, 260($sp)
    li $v1, 1
    sw $v1, 168($sp)
    lw $v1, 168($sp)
    move $v1, $v1
    sw $v1, 192($sp)
    lw $v1, 192($sp)
    lw $v0, 268($sp)
    add $v1, $v0, $v1
    sw $v1, 164($sp)
    lw $v1, 164($sp)
    move $v1, $v1
    sw $v1, 196($sp)
    lw $v1, 196($sp)
    move $v1, $v1
    sw $v1, 216($sp)
    lw $v1, 268($sp)
    lw $v0, 260($sp)
    sle $v1, $v0, $v1
    sw $v1, 160($sp)
    lw $v1, 160($sp)
    move $v1, $v1
    sw $v1, 200($sp)
    lw $v1, 268($sp)
    lw $v0, 260($sp)
    sne $v1, $v0, $v1
    sw $v1, 156($sp)
    lw $v1, 156($sp)
    move $v1, $v1
    sw $v1, 204($sp)
    lw $v1, 204($sp)
    lw $v0, 200($sp)
    add $v1, $v0, $v1
    sw $v1, 152($sp)
    li $v1, 2
    sw $v1, 148($sp)
    lw $v1, 148($sp)
    lw $v0, 152($sp)
    sne $v1, $v0, $v1
    sw $v1, 144($sp)
    lw $v1, 144($sp)
    move $v1, $v1
    sw $v1, 208($sp)
    li $v1, 1
    sw $v1, 140($sp)
    lw $v1, 140($sp)
    move $v1, $v1
    sw $v1, 132($sp)
    lw $v1, 208($sp)
    lw $v0, 132($sp)
    sne $v1, $v0, $v1
    sw $v1, 136($sp)
    lw $v1, 136($sp)
    move $v1, $v1
    sw $v1, 208($sp)
    lw $v0, 208($sp)
    beqz $v0 L_ved5
    li $v1, 0
    sw $v1, 128($sp)
    lw $v1, 128($sp)
    move $v1, $v1
    sw $v1, 212($sp)
    lw $v1, 212($sp)
    j L_ved6
L_ved5:
    li $v1, 1
    sw $v1, 124($sp)
    lw $v1, 124($sp)
    move $v1, $v1
    sw $v1, 220($sp)
    lw $v1, 220($sp)
    lw $v0, 216($sp)
    sub $v1, $v0, $v1
    sw $v1, 120($sp)
    lw $v1, 120($sp)
    move $v1, $v1
    sw $v1, 256($sp)
    lw $v1, 256($sp)
    lw $v0, 260($sp)
    sle $v1, $v0, $v1
    sw $v1, 116($sp)
    lw $v1, 116($sp)
    move $v1, $v1
    sw $v1, 252($sp)
    li $v1, 1
    sw $v1, 112($sp)
    lw $v1, 112($sp)
    lw $v0, 252($sp)
    sne $v1, $v0, $v1
    sw $v1, 108($sp)
    lw $v1, 108($sp)
    move $v1, $v1
    sw $v1, 248($sp)
    lw $v0, 248($sp)
    beqz $v0 L_ved7
    li $v1, 0
    sw $v1, 104($sp)
    lw $v1, 104($sp)
    move $v1, $v1
    sw $v1, 244($sp)
    lw $v1, 244($sp)
    j L_ved8
L_ved7:
    li $v1, 1
    sw $v1, 100($sp)
    lw $v1, 100($sp)
    move $v1, $v1
    sw $v1, 240($sp)
    lw $v1, 240($sp)
    li $v1, 1
    sw $v1, 96($sp)
    lw $v1, 96($sp)
    move $v1, $v1
    sw $v1, 236($sp)
    lw $v1, 236($sp)
    move $v1, $v1
    sw $v1, 276($sp)
    lw $v1, 264($sp)
    lw $v0, 8($v1)
    sw $v0, 232($sp)
    lw $v1, 232($sp)
    move $v1, $v1
    sw $v1, 272($sp)
L_ved8:
L_ved6:
    li $v1, 1
    sw $v1, 92($sp)
    lw $v1, 92($sp)
    move $v1, $v1
    sw $v1, 228($sp)
    lw $v1, 228($sp)
    lw $v0, 272($sp)
    add $v1, $v0, $v1
    sw $v1, 88($sp)
    lw $v1, 88($sp)
    move $v1, $v1
    sw $v1, 224($sp)
    lw $v1, 224($sp)
    move $v1, $v1
    sw $v1, 272($sp)
    j L_ved3
L_ved4:
    lw $v1, 276($sp)
    move $v0, $v1
    lw $s0, 84($sp)
    lw $s1, 80($sp)
    lw $s2, 76($sp)
    lw $s3, 72($sp)
    lw $s4, 68($sp)
    lw $s5, 64($sp)
    lw $s6, 60($sp)
    lw $s7, 56($sp)
    lw $ra, -8($fp)
    move $sp, $fp
    lw $fp, -4($fp)
    jr $ra

    .text
    .globl LS_ved_Init
LS_ved_Init:

    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 328
    sw $s0, 84($sp)
    sw $s1, 80($sp)
    sw $s2, 76($sp)
    sw $s3, 72($sp)
    sw $s4, 68($sp)
    sw $s5, 64($sp)
    sw $s6, 60($sp)
    sw $s7, 56($sp)
    sw $a0, 300($sp)
    sw $a1, 196($sp)
    lw $v1, 300($sp)
    move $s6, $v1
    lw $v1, 196($sp)
    sw $v1, 8($s6)
    li $s4, 4
    li $s5, 1
    move $s2, $s5
    lw $v1, 196($sp)
    add $s0, $s2, $v1
    move $t9, $s4
    mult $t9, $s0
    mflo $s3
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $s3
    addi $v0, $0, 9
    syscall
    move $t8, $v0
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    move $v1, $t8
    sw $v1, 204($sp)
    lw $v0, 204($sp)
    lw $v1, 196($sp)
    sw $v1, 0($v0)
    li $t7, 1
    move $v1, $t7
    sw $v1, 200($sp)
L_ved9:
    li $t6, 1
    move $t4, $t6
    lw $v1, 196($sp)
    add $t5, $t4, $v1
    lw $v0, 200($sp)
    sne $t3, $v0, $t5
    beqz $t3 L_ved10
    li $t2, 4
    move $t0, $t2
    lw $v1, 200($sp)
    mult $t0, $v1
    mflo $s7
    lw $v0, 204($sp)
    add $s1, $v0, $s7
    move $t1, $s1
    li $v1, 0
    sw $v1, 192($sp)
    lw $v1, 192($sp)
    sw $v1, 0($t1)
    li $v1, 1
    sw $v1, 188($sp)
    lw $v1, 188($sp)
    move $v1, $v1
    sw $v1, 180($sp)
    lw $v1, 200($sp)
    lw $v0, 180($sp)
    add $v1, $v0, $v1
    sw $v1, 184($sp)
    lw $v1, 184($sp)
    move $v1, $v1
    sw $v1, 200($sp)
    j L_ved9
L_ved10:
    lw $v1, 300($sp)
    move $v1, $v1
    sw $v1, 208($sp)
    lw $v0, 208($sp)
    lw $v1, 204($sp)
    sw $v1, 4($v0)
    li $v1, 1
    sw $v1, 176($sp)
    lw $v1, 176($sp)
    move $v1, $v1
    sw $v1, 212($sp)
    lw $v1, 212($sp)
    move $v1, $v1
    sw $v1, 304($sp)
    lw $v1, 300($sp)
    lw $v0, 8($v1)
    sw $v0, 216($sp)
    li $v1, 1
    sw $v1, 172($sp)
    lw $v1, 172($sp)
    move $v1, $v1
    sw $v1, 220($sp)
    lw $v1, 220($sp)
    lw $v0, 216($sp)
    add $v1, $v0, $v1
    sw $v1, 168($sp)
    lw $v1, 168($sp)
    move $v1, $v1
    sw $v1, 224($sp)
    lw $v1, 224($sp)
    move $v1, $v1
    sw $v1, 308($sp)
L_ved11:
    lw $v1, 300($sp)
    lw $v0, 8($v1)
    sw $v0, 228($sp)
    li $v1, 1
    sw $v1, 164($sp)
    lw $v1, 164($sp)
    move $v1, $v1
    sw $v1, 232($sp)
    lw $v1, 232($sp)
    lw $v0, 228($sp)
    sub $v1, $v0, $v1
    sw $v1, 160($sp)
    lw $v1, 160($sp)
    move $v1, $v1
    sw $v1, 236($sp)
    lw $v1, 236($sp)
    lw $v0, 304($sp)
    sle $v1, $v0, $v1
    sw $v1, 156($sp)
    lw $v1, 156($sp)
    move $v1, $v1
    sw $v1, 240($sp)
    lw $v0, 240($sp)
    beqz $v0 L_ved12
    li $v1, 2
    sw $v1, 152($sp)
    lw $v1, 152($sp)
    move $v1, $v1
    sw $v1, 244($sp)
    lw $v1, 304($sp)
    lw $v0, 244($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 148($sp)
    lw $v1, 148($sp)
    move $v1, $v1
    sw $v1, 248($sp)
    lw $v1, 248($sp)
    move $v1, $v1
    sw $v1, 292($sp)
    li $v1, 3
    sw $v1, 144($sp)
    lw $v1, 144($sp)
    move $v1, $v1
    sw $v1, 252($sp)
    lw $v1, 252($sp)
    lw $v0, 308($sp)
    sub $v1, $v0, $v1
    sw $v1, 140($sp)
    lw $v1, 140($sp)
    move $v1, $v1
    sw $v1, 256($sp)
    lw $v1, 256($sp)
    move $v1, $v1
    sw $v1, 296($sp)
    lw $v1, 296($sp)
    lw $v0, 292($sp)
    add $v1, $v0, $v1
    sw $v1, 136($sp)
    lw $v1, 136($sp)
    move $v1, $v1
    sw $v1, 288($sp)
    lw $v1, 300($sp)
    lw $v0, 4($v1)
    sw $v0, 284($sp)
    li $v1, 4
    sw $v1, 132($sp)
    li $v1, 1
    sw $v1, 128($sp)
    lw $v1, 128($sp)
    move $v1, $v1
    sw $v1, 120($sp)
    lw $v1, 304($sp)
    lw $v0, 120($sp)
    add $v1, $v0, $v1
    sw $v1, 124($sp)
    lw $v1, 132($sp)
    move $v1, $v1
    sw $v1, 112($sp)
    lw $v1, 124($sp)
    lw $v0, 112($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 116($sp)
    lw $v1, 116($sp)
    lw $v0, 284($sp)
    add $v1, $v0, $v1
    sw $v1, 108($sp)
    lw $v1, 108($sp)
    move $v1, $v1
    sw $v1, 280($sp)
    lw $v0, 280($sp)
    lw $v1, 288($sp)
    sw $v1, 0($v0)
    li $v1, 1
    sw $v1, 104($sp)
    lw $v1, 104($sp)
    move $v1, $v1
    sw $v1, 276($sp)
    lw $v1, 276($sp)
    lw $v0, 304($sp)
    add $v1, $v0, $v1
    sw $v1, 100($sp)
    lw $v1, 100($sp)
    move $v1, $v1
    sw $v1, 272($sp)
    lw $v1, 272($sp)
    move $v1, $v1
    sw $v1, 304($sp)
    li $v1, 1
    sw $v1, 96($sp)
    lw $v1, 96($sp)
    move $v1, $v1
    sw $v1, 268($sp)
    lw $v1, 268($sp)
    lw $v0, 308($sp)
    sub $v1, $v0, $v1
    sw $v1, 92($sp)
    lw $v1, 92($sp)
    move $v1, $v1
    sw $v1, 264($sp)
    lw $v1, 264($sp)
    move $v1, $v1
    sw $v1, 308($sp)
    j L_ved11
L_ved12:
    li $v1, 0
    sw $v1, 88($sp)
    lw $v1, 88($sp)
    move $v1, $v1
    sw $v1, 260($sp)
    lw $v1, 260($sp)
    move $v0, $v1
    lw $s0, 84($sp)
    lw $s1, 80($sp)
    lw $s2, 76($sp)
    lw $s3, 72($sp)
    lw $s4, 68($sp)
    lw $s5, 64($sp)
    lw $s6, 60($sp)
    lw $s7, 56($sp)
    lw $ra, -8($fp)
    move $sp, $fp
    lw $fp, -4($fp)
    jr $ra

    .data
    .align 0
newl:    .asciiz "\n"
