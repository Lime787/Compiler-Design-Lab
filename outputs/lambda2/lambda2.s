[0.001s][warning][perf,memops] Cannot use file /tmp/hsperfdata_ved/204865 because it is locked by another process (errno = 11)
    .text
    .globl main
main:
    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 104
    li $s7, 4
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $s7
    addi $v0, $0, 9
    syscall
    move $t0, $v0
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    move $s0, $t0
    li $t1, 4
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $t1
    addi $v0, $0, 9
    syscall
    move $t2, $v0
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    move $s1, $t2
    sw $s1, 0($s0)
    la $t3, test_ved_Less_Equal
    sw $t3, 0($s1)
    li $t4, 5
    move $s2, $t4
    li $t5, 10
    move $s3, $t5
    lw $s4, 0($s0)
    lw $s5, 0($s4)
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
    move $a2, $s3
    jalr $s5
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
    move $t6, $v0
    move $s6, $t6
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $s6
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
    .globl test_ved_Less_Equal
test_ved_Less_Equal:

    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 124
    sw $s0, 84($sp)
    sw $s1, 80($sp)
    sw $s2, 76($sp)
    sw $s3, 72($sp)
    sw $s4, 68($sp)
    sw $s5, 64($sp)
    sw $s6, 60($sp)
    sw $s7, 56($sp)
    move $s0, $a0
    move $s1, $a1
    move $s2, $a2
    li $t4, 4
    li $t5, 6
    move $t7, $t4
    mult $t7, $t5
    mflo $t6
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $t6
    addi $v0, $0, 9
    syscall
    move $t8, $v0
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    move $s5, $t8
    li $t9, 4
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $t9
    addi $v0, $0, 9
    syscall
    move $s4, $v0
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    move $s6, $s4
    sw $s6, 0($s5)
    la $t3, Lambda_ved_1
    sw $t3, 0($s6)
    sw $s0, 4($s5)
    sw $s1, 8($s5)
    sw $s2, 12($s5)
    sw $s3, 16($s5)
    lw $v1, 104($sp)
    sw $v1, 20($s5)
    move $s3, $s5
    lw $s7, 0($s3)
    lw $t0, 0($s7)
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
    move $a0, $s3
    move $a1, $s1
    jalr $t0
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
    move $t2, $v0
    move $t1, $t2
    beqz $t1 L_ved1
    li $v1, 1
    sw $v1, 92($sp)
    lw $v1, 92($sp)
    move $v1, $v1
    sw $v1, 96($sp)
    lw $v1, 96($sp)
    move $v1, $v1
    sw $v1, 104($sp)
    j L_ved2
L_ved1:
    li $v1, 0
    sw $v1, 88($sp)
    lw $v1, 88($sp)
    move $v1, $v1
    sw $v1, 100($sp)
    lw $v1, 100($sp)
    move $v1, $v1
    sw $v1, 104($sp)
L_ved2:
    lw $v1, 104($sp)
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
    .globl Lambda_ved_1
Lambda_ved_1:

    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 104
    sw $s0, 84($sp)
    sw $s1, 80($sp)
    sw $s2, 76($sp)
    sw $s3, 72($sp)
    sw $s4, 68($sp)
    sw $s5, 64($sp)
    sw $s6, 60($sp)
    sw $s7, 56($sp)
    move $s0, $a0
    move $s1, $a1
    lw $s2, 12($s0)
    lw $s3, 4($s0)
    move $s0, $s3
    sle $s5, $s1, $s2
    move $s4, $s5
    move $v0, $s4
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
