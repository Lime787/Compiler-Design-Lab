    .text
    .globl main
main:
    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 104
    li $s6, 4
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $s6
    addi $v0, $0, 9
    syscall
    move $s7, $v0
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    move $s0, $s7
    li $t0, 4
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
    la $t2, test_ved_A
    sw $t2, 0($s1)
    li $t3, 5
    move $s2, $t3
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
    move $t4, $v0
    move $s5, $t4
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
    .globl test_ved_A
test_ved_A:

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
    li $t0, 4
    li $t1, 4
    move $t3, $t0
    mult $t3, $t1
    mflo $t2
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $t2
    addi $v0, $0, 9
    syscall
    move $t4, $v0
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    move $s3, $t4
    li $t5, 4
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $t5
    addi $v0, $0, 9
    syscall
    move $t6, $v0
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    move $s4, $t6
    sw $s4, 0($s3)
    la $t7, Lambda_ved_1
    sw $t7, 0($s4)
    sw $s0, 4($s3)
    sw $s1, 8($s3)
    sw $s2, 12($s3)
    move $s2, $s3
    lw $s5, 0($s2)
    lw $s6, 0($s5)
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
    move $a0, $s2
    move $a1, $s1
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
    move $t8, $v0
    move $s7, $t8
    move $v0, $s7
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
    lw $s1, 8($s0)
    lw $s2, 4($s0)
    move $s0, $s2
    li $s5, 1
    move $s3, $s5
    add $s6, $s1, $s3
    move $s4, $s6
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
