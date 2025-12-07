    .text
    .globl main
main:
    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 128
    li $t0, 12
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $t0
    addi $v0, $0, 9
    syscall
    move $t1, $v0
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    move $v1, $t1
    sw $v1, 96($sp)
    li $t2, 24
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $t2
    addi $v0, $0, 9
    syscall
    move $t3, $v0
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    move $s1, $t3
    lw $v0, 96($sp)
    sw $s1, 0($v0)
    la $t4, BS_ved_Start
    sw $t4, 0($s1)
    la $t5, BS_ved_Search
    sw $t5, 4($s1)
    la $t6, BS_ved_Div
    sw $t6, 8($s1)
    la $t7, BS_ved_Compare
    sw $t7, 12($s1)
    la $t8, BS_ved_Print
    sw $t8, 16($s1)
    la $t9, BS_ved_Init
    sw $t9, 20($s1)
    li $s7, 0
    lw $v0, 96($sp)
    sw $s7, 4($v0)
    li $s6, 0
    lw $v0, 96($sp)
    sw $s6, 8($v0)
    li $s4, 20
    move $s2, $s4
    li $s0, 0
    move $s3, $s0
    add $s5, $s2, $s3
    move $v1, $s5
    sw $v1, 100($sp)
    lw $v1, 96($sp)
    lw $v0, 0($v1)
    sw $v0, 92($sp)
    lw $v1, 92($sp)
    lw $v0, 0($v1)
    sw $v0, 104($sp)
    lw $v1, 104($sp)
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
    lw $v0, 96($sp)
    move $a0, $v0
    lw $v0, 100($sp)
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
    sw $v1, 88($sp)
    lw $v1, 88($sp)
    move $v1, $v1
    sw $v1, 108($sp)
    lw $v1, 108($sp)
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
    lw $ra, -8($fp)
    move $sp, $fp
    lw $fp, -4($fp)
    jr $ra

    .text
    .globl BS_ved_Start
BS_ved_Start:

    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 656
    sw $s0, 84($sp)
    sw $s1, 80($sp)
    sw $s2, 76($sp)
    sw $s3, 72($sp)
    sw $s4, 68($sp)
    sw $s5, 64($sp)
    sw $s6, 60($sp)
    sw $s7, 56($sp)
    sw $a0, 636($sp)
    move $s1, $a1
    lw $v1, 636($sp)
    lw $s2, 0($v1)
    lw $s3, 20($s2)
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
    lw $v0, 636($sp)
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
    move $s0, $v0
    move $s4, $s0
    lw $v1, 636($sp)
    lw $s5, 0($v1)
    lw $s6, 16($s5)
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
    lw $v0, 636($sp)
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
    move $t9, $v0
    move $s7, $t9
    li $t8, 8
    move $t0, $t8
    lw $v1, 636($sp)
    lw $t1, 0($v1)
    lw $t2, 4($t1)
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
    lw $v0, 636($sp)
    move $a0, $v0
    move $a1, $t0
    jalr $t2
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
    move $t7, $v0
    move $t3, $t7
    beqz $t3 L_ved1
    li $t6, 1
    move $t4, $t6
    li $t5, 0
    move $v1, $t5
    sw $v1, 332($sp)
    lw $v1, 332($sp)
    add $v1, $t4, $v1
    sw $v1, 328($sp)
    lw $v1, 328($sp)
    move $v1, $v1
    sw $v1, 336($sp)
    lw $v1, 336($sp)
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
    j L_ved2
L_ved1:
    li $v1, 0
    sw $v1, 324($sp)
    lw $v1, 324($sp)
    move $v1, $v1
    sw $v1, 340($sp)
    li $v1, 0
    sw $v1, 320($sp)
    lw $v1, 320($sp)
    move $v1, $v1
    sw $v1, 344($sp)
    lw $v1, 344($sp)
    lw $v0, 340($sp)
    add $v1, $v0, $v1
    sw $v1, 316($sp)
    lw $v1, 316($sp)
    move $v1, $v1
    sw $v1, 348($sp)
    lw $v1, 348($sp)
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
L_ved2:
    li $v1, 19
    sw $v1, 312($sp)
    lw $v1, 312($sp)
    move $v1, $v1
    sw $v1, 632($sp)
    lw $v1, 636($sp)
    lw $v0, 0($v1)
    sw $v0, 352($sp)
    lw $v1, 352($sp)
    lw $v0, 4($v1)
    sw $v0, 628($sp)
    lw $v1, 628($sp)
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
    lw $v0, 636($sp)
    move $a0, $v0
    lw $v0, 632($sp)
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
    sw $v1, 308($sp)
    lw $v1, 308($sp)
    move $v1, $v1
    sw $v1, 624($sp)
    lw $v0, 624($sp)
    beqz $v0 L_ved3
    li $v1, 1
    sw $v1, 304($sp)
    lw $v1, 304($sp)
    move $v1, $v1
    sw $v1, 620($sp)
    li $v1, 0
    sw $v1, 300($sp)
    lw $v1, 300($sp)
    move $v1, $v1
    sw $v1, 616($sp)
    lw $v1, 616($sp)
    lw $v0, 620($sp)
    add $v1, $v0, $v1
    sw $v1, 296($sp)
    lw $v1, 296($sp)
    move $v1, $v1
    sw $v1, 612($sp)
    lw $v1, 612($sp)
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
    j L_ved4
L_ved3:
    li $v1, 0
    sw $v1, 292($sp)
    lw $v1, 292($sp)
    move $v1, $v1
    sw $v1, 608($sp)
    li $v1, 0
    sw $v1, 288($sp)
    lw $v1, 288($sp)
    move $v1, $v1
    sw $v1, 604($sp)
    lw $v1, 604($sp)
    lw $v0, 608($sp)
    add $v1, $v0, $v1
    sw $v1, 284($sp)
    lw $v1, 284($sp)
    move $v1, $v1
    sw $v1, 600($sp)
    lw $v1, 600($sp)
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
L_ved4:
    li $v1, 20
    sw $v1, 280($sp)
    lw $v1, 280($sp)
    move $v1, $v1
    sw $v1, 596($sp)
    lw $v1, 636($sp)
    lw $v0, 0($v1)
    sw $v0, 592($sp)
    lw $v1, 592($sp)
    lw $v0, 4($v1)
    sw $v0, 588($sp)
    lw $v1, 588($sp)
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
    lw $v0, 636($sp)
    move $a0, $v0
    lw $v0, 596($sp)
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
    sw $v1, 276($sp)
    lw $v1, 276($sp)
    move $v1, $v1
    sw $v1, 584($sp)
    lw $v0, 584($sp)
    beqz $v0 L_ved5
    li $v1, 1
    sw $v1, 272($sp)
    lw $v1, 272($sp)
    move $v1, $v1
    sw $v1, 580($sp)
    li $v1, 0
    sw $v1, 268($sp)
    lw $v1, 268($sp)
    move $v1, $v1
    sw $v1, 576($sp)
    lw $v1, 576($sp)
    lw $v0, 580($sp)
    add $v1, $v0, $v1
    sw $v1, 264($sp)
    lw $v1, 264($sp)
    move $v1, $v1
    sw $v1, 572($sp)
    lw $v1, 572($sp)
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
    j L_ved6
L_ved5:
    li $v1, 0
    sw $v1, 260($sp)
    lw $v1, 260($sp)
    move $v1, $v1
    sw $v1, 568($sp)
    li $v1, 0
    sw $v1, 256($sp)
    lw $v1, 256($sp)
    move $v1, $v1
    sw $v1, 564($sp)
    lw $v1, 564($sp)
    lw $v0, 568($sp)
    add $v1, $v0, $v1
    sw $v1, 252($sp)
    lw $v1, 252($sp)
    move $v1, $v1
    sw $v1, 560($sp)
    lw $v1, 560($sp)
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
L_ved6:
    li $v1, 21
    sw $v1, 248($sp)
    lw $v1, 248($sp)
    move $v1, $v1
    sw $v1, 556($sp)
    lw $v1, 636($sp)
    lw $v0, 0($v1)
    sw $v0, 552($sp)
    lw $v1, 552($sp)
    lw $v0, 4($v1)
    sw $v0, 548($sp)
    lw $v1, 548($sp)
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
    lw $v0, 636($sp)
    move $a0, $v0
    lw $v0, 556($sp)
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
    sw $v1, 244($sp)
    lw $v1, 244($sp)
    move $v1, $v1
    sw $v1, 544($sp)
    lw $v0, 544($sp)
    beqz $v0 L_ved7
    li $v1, 1
    sw $v1, 240($sp)
    lw $v1, 240($sp)
    move $v1, $v1
    sw $v1, 540($sp)
    li $v1, 0
    sw $v1, 236($sp)
    lw $v1, 236($sp)
    move $v1, $v1
    sw $v1, 536($sp)
    lw $v1, 536($sp)
    lw $v0, 540($sp)
    add $v1, $v0, $v1
    sw $v1, 232($sp)
    lw $v1, 232($sp)
    move $v1, $v1
    sw $v1, 532($sp)
    lw $v1, 532($sp)
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
    j L_ved8
L_ved7:
    li $v1, 0
    sw $v1, 228($sp)
    lw $v1, 228($sp)
    move $v1, $v1
    sw $v1, 528($sp)
    li $v1, 0
    sw $v1, 224($sp)
    lw $v1, 224($sp)
    move $v1, $v1
    sw $v1, 524($sp)
    lw $v1, 524($sp)
    lw $v0, 528($sp)
    add $v1, $v0, $v1
    sw $v1, 220($sp)
    lw $v1, 220($sp)
    move $v1, $v1
    sw $v1, 520($sp)
    lw $v1, 520($sp)
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
L_ved8:
    li $v1, 37
    sw $v1, 216($sp)
    lw $v1, 216($sp)
    move $v1, $v1
    sw $v1, 516($sp)
    lw $v1, 636($sp)
    lw $v0, 0($v1)
    sw $v0, 512($sp)
    lw $v1, 512($sp)
    lw $v0, 4($v1)
    sw $v0, 508($sp)
    lw $v1, 508($sp)
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
    lw $v0, 636($sp)
    move $a0, $v0
    lw $v0, 516($sp)
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
    sw $v1, 212($sp)
    lw $v1, 212($sp)
    move $v1, $v1
    sw $v1, 504($sp)
    lw $v0, 504($sp)
    beqz $v0 L_ved9
    li $v1, 1
    sw $v1, 208($sp)
    lw $v1, 208($sp)
    move $v1, $v1
    sw $v1, 500($sp)
    li $v1, 0
    sw $v1, 204($sp)
    lw $v1, 204($sp)
    move $v1, $v1
    sw $v1, 496($sp)
    lw $v1, 496($sp)
    lw $v0, 500($sp)
    add $v1, $v0, $v1
    sw $v1, 200($sp)
    lw $v1, 200($sp)
    move $v1, $v1
    sw $v1, 492($sp)
    lw $v1, 492($sp)
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
    j L_ved10
L_ved9:
    li $v1, 0
    sw $v1, 196($sp)
    lw $v1, 196($sp)
    move $v1, $v1
    sw $v1, 488($sp)
    li $v1, 0
    sw $v1, 192($sp)
    lw $v1, 192($sp)
    move $v1, $v1
    sw $v1, 484($sp)
    lw $v1, 484($sp)
    lw $v0, 488($sp)
    add $v1, $v0, $v1
    sw $v1, 188($sp)
    lw $v1, 188($sp)
    move $v1, $v1
    sw $v1, 480($sp)
    lw $v1, 480($sp)
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
L_ved10:
    li $v1, 38
    sw $v1, 184($sp)
    lw $v1, 184($sp)
    move $v1, $v1
    sw $v1, 476($sp)
    lw $v1, 636($sp)
    lw $v0, 0($v1)
    sw $v0, 472($sp)
    lw $v1, 472($sp)
    lw $v0, 4($v1)
    sw $v0, 468($sp)
    lw $v1, 468($sp)
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
    lw $v0, 636($sp)
    move $a0, $v0
    lw $v0, 476($sp)
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
    sw $v1, 180($sp)
    lw $v1, 180($sp)
    move $v1, $v1
    sw $v1, 464($sp)
    lw $v0, 464($sp)
    beqz $v0 L_ved11
    li $v1, 1
    sw $v1, 176($sp)
    lw $v1, 176($sp)
    move $v1, $v1
    sw $v1, 460($sp)
    li $v1, 0
    sw $v1, 172($sp)
    lw $v1, 172($sp)
    move $v1, $v1
    sw $v1, 456($sp)
    lw $v1, 456($sp)
    lw $v0, 460($sp)
    add $v1, $v0, $v1
    sw $v1, 168($sp)
    lw $v1, 168($sp)
    move $v1, $v1
    sw $v1, 452($sp)
    lw $v1, 452($sp)
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
    j L_ved12
L_ved11:
    li $v1, 0
    sw $v1, 164($sp)
    lw $v1, 164($sp)
    move $v1, $v1
    sw $v1, 448($sp)
    li $v1, 0
    sw $v1, 160($sp)
    lw $v1, 160($sp)
    move $v1, $v1
    sw $v1, 444($sp)
    lw $v1, 444($sp)
    lw $v0, 448($sp)
    add $v1, $v0, $v1
    sw $v1, 156($sp)
    lw $v1, 156($sp)
    move $v1, $v1
    sw $v1, 440($sp)
    lw $v1, 440($sp)
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
L_ved12:
    li $v1, 39
    sw $v1, 152($sp)
    lw $v1, 152($sp)
    move $v1, $v1
    sw $v1, 436($sp)
    lw $v1, 636($sp)
    lw $v0, 0($v1)
    sw $v0, 432($sp)
    lw $v1, 432($sp)
    lw $v0, 4($v1)
    sw $v0, 428($sp)
    lw $v1, 428($sp)
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
    lw $v0, 636($sp)
    move $a0, $v0
    lw $v0, 436($sp)
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
    sw $v1, 148($sp)
    lw $v1, 148($sp)
    move $v1, $v1
    sw $v1, 424($sp)
    lw $v0, 424($sp)
    beqz $v0 L_ved13
    li $v1, 1
    sw $v1, 144($sp)
    lw $v1, 144($sp)
    move $v1, $v1
    sw $v1, 420($sp)
    li $v1, 0
    sw $v1, 140($sp)
    lw $v1, 140($sp)
    move $v1, $v1
    sw $v1, 416($sp)
    lw $v1, 416($sp)
    lw $v0, 420($sp)
    add $v1, $v0, $v1
    sw $v1, 136($sp)
    lw $v1, 136($sp)
    move $v1, $v1
    sw $v1, 412($sp)
    lw $v1, 412($sp)
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
    j L_ved14
L_ved13:
    li $v1, 0
    sw $v1, 132($sp)
    lw $v1, 132($sp)
    move $v1, $v1
    sw $v1, 408($sp)
    li $v1, 0
    sw $v1, 128($sp)
    lw $v1, 128($sp)
    move $v1, $v1
    sw $v1, 404($sp)
    lw $v1, 404($sp)
    lw $v0, 408($sp)
    add $v1, $v0, $v1
    sw $v1, 124($sp)
    lw $v1, 124($sp)
    move $v1, $v1
    sw $v1, 400($sp)
    lw $v1, 400($sp)
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
L_ved14:
    li $v1, 50
    sw $v1, 120($sp)
    lw $v1, 120($sp)
    move $v1, $v1
    sw $v1, 396($sp)
    lw $v1, 636($sp)
    lw $v0, 0($v1)
    sw $v0, 392($sp)
    lw $v1, 392($sp)
    lw $v0, 4($v1)
    sw $v0, 388($sp)
    lw $v1, 388($sp)
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
    lw $v0, 636($sp)
    move $a0, $v0
    lw $v0, 396($sp)
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
    sw $v1, 116($sp)
    lw $v1, 116($sp)
    move $v1, $v1
    sw $v1, 384($sp)
    lw $v0, 384($sp)
    beqz $v0 L_ved15
    li $v1, 1
    sw $v1, 112($sp)
    lw $v1, 112($sp)
    move $v1, $v1
    sw $v1, 380($sp)
    li $v1, 0
    sw $v1, 108($sp)
    lw $v1, 108($sp)
    move $v1, $v1
    sw $v1, 376($sp)
    lw $v1, 376($sp)
    lw $v0, 380($sp)
    add $v1, $v0, $v1
    sw $v1, 104($sp)
    lw $v1, 104($sp)
    move $v1, $v1
    sw $v1, 372($sp)
    lw $v1, 372($sp)
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
    j L_ved16
L_ved15:
    li $v1, 0
    sw $v1, 100($sp)
    lw $v1, 100($sp)
    move $v1, $v1
    sw $v1, 368($sp)
    li $v1, 0
    sw $v1, 96($sp)
    lw $v1, 96($sp)
    move $v1, $v1
    sw $v1, 364($sp)
    lw $v1, 364($sp)
    lw $v0, 368($sp)
    add $v1, $v0, $v1
    sw $v1, 92($sp)
    lw $v1, 92($sp)
    move $v1, $v1
    sw $v1, 360($sp)
    lw $v1, 360($sp)
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
L_ved16:
    li $v1, 999
    sw $v1, 88($sp)
    lw $v1, 88($sp)
    move $v1, $v1
    sw $v1, 356($sp)
    lw $v1, 356($sp)
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
    .globl BS_ved_Search
BS_ved_Search:

    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 344
    sw $s0, 84($sp)
    sw $s1, 80($sp)
    sw $s2, 76($sp)
    sw $s3, 72($sp)
    sw $s4, 68($sp)
    sw $s5, 64($sp)
    sw $s6, 60($sp)
    sw $s7, 56($sp)
    sw $a0, 312($sp)
    sw $a1, 316($sp)
    li $s6, 0
    move $t0, $s6
    move $v1, $t0
    sw $v1, 320($sp)
    li $s3, 0
    move $t1, $s3
    move $v1, $t1
    sw $v1, 324($sp)
    lw $v1, 312($sp)
    lw $t2, 4($v1)
    lw $t3, 0($t2)
    move $v1, $t3
    sw $v1, 300($sp)
    li $s4, 1
    move $t4, $s4
    lw $v0, 300($sp)
    sub $s0, $v0, $t4
    move $t5, $s0
    move $v1, $t5
    sw $v1, 300($sp)
    li $s5, 0
    move $t6, $s5
    move $v1, $t6
    sw $v1, 304($sp)
    li $s1, 1
    move $t7, $s1
    move $v1, $t7
    sw $v1, 308($sp)
L_ved17:
    lw $v0, 308($sp)
    beqz $v0 L_ved18
    lw $v1, 300($sp)
    lw $v0, 304($sp)
    add $s7, $v0, $v1
    move $t8, $s7
    move $v1, $t8
    sw $v1, 296($sp)
    lw $v1, 312($sp)
    lw $t9, 0($v1)
    lw $s2, 8($t9)
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
    lw $v0, 312($sp)
    move $a0, $v0
    lw $v0, 296($sp)
    move $a1, $v0
    jalr $s2
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
    sw $v1, 188($sp)
    lw $v1, 188($sp)
    move $v1, $v1
    sw $v1, 192($sp)
    lw $v1, 192($sp)
    move $v1, $v1
    sw $v1, 296($sp)
    lw $v1, 312($sp)
    lw $v0, 4($v1)
    sw $v0, 196($sp)
    li $v1, 4
    sw $v1, 184($sp)
    li $v1, 1
    sw $v1, 180($sp)
    lw $v1, 180($sp)
    move $v1, $v1
    sw $v1, 172($sp)
    lw $v1, 296($sp)
    lw $v0, 172($sp)
    add $v1, $v0, $v1
    sw $v1, 176($sp)
    lw $v1, 184($sp)
    move $v1, $v1
    sw $v1, 164($sp)
    lw $v1, 176($sp)
    lw $v0, 164($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 168($sp)
    lw $v1, 168($sp)
    lw $v0, 196($sp)
    add $v1, $v0, $v1
    sw $v1, 160($sp)
    lw $v1, 160($sp)
    move $v1, $v1
    sw $v1, 200($sp)
    lw $v1, 200($sp)
    lw $v0, 0($v1)
    sw $v0, 204($sp)
    lw $v1, 204($sp)
    move $v1, $v1
    sw $v1, 320($sp)
    li $v1, 1
    sw $v1, 156($sp)
    lw $v1, 156($sp)
    move $v1, $v1
    sw $v1, 208($sp)
    lw $v1, 208($sp)
    lw $v0, 320($sp)
    sub $v1, $v0, $v1
    sw $v1, 152($sp)
    lw $v1, 152($sp)
    move $v1, $v1
    sw $v1, 212($sp)
    lw $v1, 212($sp)
    lw $v0, 316($sp)
    sle $v1, $v0, $v1
    sw $v1, 148($sp)
    lw $v1, 148($sp)
    move $v1, $v1
    sw $v1, 216($sp)
    lw $v0, 216($sp)
    beqz $v0 L_ved19
    li $v1, 1
    sw $v1, 144($sp)
    lw $v1, 144($sp)
    move $v1, $v1
    sw $v1, 292($sp)
    lw $v1, 292($sp)
    lw $v0, 296($sp)
    sub $v1, $v0, $v1
    sw $v1, 140($sp)
    lw $v1, 140($sp)
    move $v1, $v1
    sw $v1, 288($sp)
    lw $v1, 288($sp)
    move $v1, $v1
    sw $v1, 300($sp)
    j L_ved20
L_ved19:
    li $v1, 1
    sw $v1, 136($sp)
    lw $v1, 136($sp)
    move $v1, $v1
    sw $v1, 284($sp)
    lw $v1, 284($sp)
    lw $v0, 296($sp)
    add $v1, $v0, $v1
    sw $v1, 132($sp)
    lw $v1, 132($sp)
    move $v1, $v1
    sw $v1, 280($sp)
    lw $v1, 280($sp)
    move $v1, $v1
    sw $v1, 304($sp)
L_ved20:
    lw $v1, 312($sp)
    lw $v0, 0($v1)
    sw $v0, 276($sp)
    lw $v1, 276($sp)
    lw $v0, 12($v1)
    sw $v0, 272($sp)
    lw $v1, 272($sp)
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
    lw $v0, 312($sp)
    move $a0, $v0
    lw $v0, 320($sp)
    move $a1, $v0
    lw $v0, 316($sp)
    move $a2, $v0
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
    sw $v1, 128($sp)
    lw $v1, 128($sp)
    move $v1, $v1
    sw $v1, 268($sp)
    lw $v0, 268($sp)
    beqz $v0 L_ved21
    li $v1, 0
    sw $v1, 124($sp)
    lw $v1, 124($sp)
    move $v1, $v1
    sw $v1, 264($sp)
    lw $v1, 264($sp)
    move $v1, $v1
    sw $v1, 308($sp)
    j L_ved22
L_ved21:
    li $v1, 1
    sw $v1, 120($sp)
    lw $v1, 120($sp)
    move $v1, $v1
    sw $v1, 260($sp)
    lw $v1, 260($sp)
    move $v1, $v1
    sw $v1, 308($sp)
L_ved22:
    li $v1, 1
    sw $v1, 116($sp)
    lw $v1, 116($sp)
    move $v1, $v1
    sw $v1, 256($sp)
    lw $v1, 256($sp)
    lw $v0, 304($sp)
    sub $v1, $v0, $v1
    sw $v1, 112($sp)
    lw $v1, 112($sp)
    move $v1, $v1
    sw $v1, 252($sp)
    lw $v1, 252($sp)
    lw $v0, 300($sp)
    sle $v1, $v0, $v1
    sw $v1, 108($sp)
    lw $v1, 108($sp)
    move $v1, $v1
    sw $v1, 248($sp)
    lw $v0, 248($sp)
    beqz $v0 L_ved23
    li $v1, 0
    sw $v1, 104($sp)
    lw $v1, 104($sp)
    move $v1, $v1
    sw $v1, 244($sp)
    lw $v1, 244($sp)
    move $v1, $v1
    sw $v1, 308($sp)
    j L_ved24
L_ved23:
    li $v1, 0
    sw $v1, 100($sp)
    lw $v1, 100($sp)
    move $v1, $v1
    sw $v1, 240($sp)
    lw $v1, 240($sp)
L_ved24:
    j L_ved17
L_ved18:
    lw $v1, 312($sp)
    lw $v0, 0($v1)
    sw $v0, 236($sp)
    lw $v1, 236($sp)
    lw $v0, 12($v1)
    sw $v0, 232($sp)
    lw $v1, 232($sp)
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
    lw $v0, 312($sp)
    move $a0, $v0
    lw $v0, 320($sp)
    move $a1, $v0
    lw $v0, 316($sp)
    move $a2, $v0
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
    sw $v1, 96($sp)
    lw $v1, 96($sp)
    move $v1, $v1
    sw $v1, 228($sp)
    lw $v0, 228($sp)
    beqz $v0 L_ved25
    li $v1, 1
    sw $v1, 92($sp)
    lw $v1, 92($sp)
    move $v1, $v1
    sw $v1, 224($sp)
    lw $v1, 224($sp)
    move $v1, $v1
    sw $v1, 324($sp)
    j L_ved26
L_ved25:
    li $v1, 0
    sw $v1, 88($sp)
    lw $v1, 88($sp)
    move $v1, $v1
    sw $v1, 220($sp)
    lw $v1, 220($sp)
    move $v1, $v1
    sw $v1, 324($sp)
L_ved26:
    lw $v1, 324($sp)
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
    .globl BS_ved_Div
BS_ved_Div:

    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 156
    sw $s0, 84($sp)
    sw $s1, 80($sp)
    sw $s2, 76($sp)
    sw $s3, 72($sp)
    sw $s4, 68($sp)
    sw $s5, 64($sp)
    sw $s6, 60($sp)
    sw $s7, 56($sp)
    move $s0, $a1
    li $t7, 0
    move $s4, $t7
    move $v1, $s4
    sw $v1, 136($sp)
    li $t8, 0
    move $s5, $t8
    move $v1, $s5
    sw $v1, 128($sp)
    li $t9, 1
    move $s6, $t9
    sub $s1, $s0, $s6
    move $s7, $s1
    move $v1, $s7
    sw $v1, 132($sp)
L_ved27:
    lw $v1, 132($sp)
    lw $v0, 128($sp)
    sle $s3, $v0, $v1
    move $t0, $s3
    lw $v1, 132($sp)
    lw $v0, 128($sp)
    sne $s2, $v0, $v1
    move $t1, $s2
    add $t6, $t0, $t1
    li $t5, 2
    sne $t4, $t6, $t5
    move $v1, $t4
    sw $v1, 108($sp)
    li $t3, 1
    move $t2, $t3
    lw $v1, 108($sp)
    sne $v1, $t2, $v1
    sw $v1, 104($sp)
    lw $v1, 104($sp)
    move $v1, $v1
    sw $v1, 108($sp)
    lw $v0, 108($sp)
    beqz $v0 L_ved28
    li $v1, 1
    sw $v1, 100($sp)
    lw $v1, 100($sp)
    move $v1, $v1
    sw $v1, 112($sp)
    lw $v1, 112($sp)
    lw $v0, 136($sp)
    add $v1, $v0, $v1
    sw $v1, 96($sp)
    lw $v1, 96($sp)
    move $v1, $v1
    sw $v1, 116($sp)
    lw $v1, 116($sp)
    move $v1, $v1
    sw $v1, 136($sp)
    li $v1, 2
    sw $v1, 92($sp)
    lw $v1, 92($sp)
    move $v1, $v1
    sw $v1, 120($sp)
    lw $v1, 120($sp)
    lw $v0, 128($sp)
    add $v1, $v0, $v1
    sw $v1, 88($sp)
    lw $v1, 88($sp)
    move $v1, $v1
    sw $v1, 124($sp)
    lw $v1, 124($sp)
    move $v1, $v1
    sw $v1, 128($sp)
    j L_ved27
L_ved28:
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
    .globl BS_ved_Compare
BS_ved_Compare:

    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 156
    sw $s0, 84($sp)
    sw $s1, 80($sp)
    sw $s2, 76($sp)
    sw $s3, 72($sp)
    sw $s4, 68($sp)
    sw $s5, 64($sp)
    sw $s6, 60($sp)
    sw $s7, 56($sp)
    sw $a1, 112($sp)
    move $s1, $a2
    li $t9, 0
    move $s4, $t9
    move $v1, $s4
    sw $v1, 136($sp)
    li $s2, 1
    move $s5, $s2
    add $t8, $s1, $s5
    move $s6, $t8
    move $s3, $s6
    li $t7, 1
    move $s7, $t7
    sub $t6, $s1, $s7
    move $t0, $t6
    lw $v0, 112($sp)
    sle $t5, $v0, $t0
    move $t1, $t5
    beqz $t1 L_ved29
    li $t4, 0
    move $t2, $t4
    move $v1, $t2
    sw $v1, 136($sp)
    j L_ved30
L_ved29:
    li $s0, 1
    move $t3, $s0
    sub $v1, $s3, $t3
    sw $v1, 108($sp)
    lw $v1, 108($sp)
    move $v1, $v1
    sw $v1, 116($sp)
    lw $v1, 116($sp)
    lw $v0, 112($sp)
    sle $v1, $v0, $v1
    sw $v1, 104($sp)
    lw $v1, 104($sp)
    move $v1, $v1
    sw $v1, 120($sp)
    li $v1, 1
    sw $v1, 100($sp)
    lw $v1, 100($sp)
    lw $v0, 120($sp)
    sne $v1, $v0, $v1
    sw $v1, 96($sp)
    lw $v1, 96($sp)
    move $v1, $v1
    sw $v1, 124($sp)
    lw $v0, 124($sp)
    beqz $v0 L_ved31
    li $v1, 0
    sw $v1, 92($sp)
    lw $v1, 92($sp)
    move $v1, $v1
    sw $v1, 128($sp)
    lw $v1, 128($sp)
    move $v1, $v1
    sw $v1, 136($sp)
    j L_ved32
L_ved31:
    li $v1, 1
    sw $v1, 88($sp)
    lw $v1, 88($sp)
    move $v1, $v1
    sw $v1, 132($sp)
    lw $v1, 132($sp)
    move $v1, $v1
    sw $v1, 136($sp)
L_ved32:
L_ved30:
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
    .globl BS_ved_Print
BS_ved_Print:

    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 188
    sw $s0, 84($sp)
    sw $s1, 80($sp)
    sw $s2, 76($sp)
    sw $s3, 72($sp)
    sw $s4, 68($sp)
    sw $s5, 64($sp)
    sw $s6, 60($sp)
    sw $s7, 56($sp)
    sw $a0, 148($sp)
    li $t9, 1
    move $s2, $t9
    move $v1, $s2
    sw $v1, 152($sp)
L_ved33:
    lw $v1, 148($sp)
    lw $s3, 8($v1)
    lw $v0, 152($sp)
    sle $t8, $v0, $s3
    move $s4, $t8
    lw $v1, 148($sp)
    lw $s5, 8($v1)
    lw $v0, 152($sp)
    sne $t7, $v0, $s5
    move $s6, $t7
    add $t6, $s4, $s6
    li $t5, 2
    sne $s1, $t6, $t5
    move $s7, $s1
    li $s0, 1
    move $t3, $s0
    sne $t4, $t3, $s7
    move $s7, $t4
    beqz $s7 L_ved34
    lw $v1, 148($sp)
    lw $v0, 4($v1)
    sw $v0, 128($sp)
    li $t1, 4
    li $t2, 1
    move $t0, $t2
    lw $v1, 152($sp)
    add $v1, $t0, $v1
    sw $v1, 124($sp)
    move $v1, $t1
    sw $v1, 116($sp)
    lw $v1, 124($sp)
    lw $v0, 116($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 120($sp)
    lw $v1, 120($sp)
    lw $v0, 128($sp)
    add $v1, $v0, $v1
    sw $v1, 112($sp)
    lw $v1, 112($sp)
    move $v1, $v1
    sw $v1, 132($sp)
    lw $v1, 132($sp)
    lw $v0, 0($v1)
    sw $v0, 136($sp)
    lw $v1, 136($sp)
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
    sw $v1, 108($sp)
    lw $v1, 108($sp)
    move $v1, $v1
    sw $v1, 140($sp)
    lw $v1, 140($sp)
    lw $v0, 152($sp)
    add $v1, $v0, $v1
    sw $v1, 104($sp)
    lw $v1, 104($sp)
    move $v1, $v1
    sw $v1, 144($sp)
    lw $v1, 144($sp)
    move $v1, $v1
    sw $v1, 152($sp)
    j L_ved33
L_ved34:
    li $v1, 9999
    sw $v1, 100($sp)
    lw $v1, 100($sp)
    move $v1, $v1
    sw $v1, 156($sp)
    li $v1, 0
    sw $v1, 96($sp)
    lw $v1, 96($sp)
    move $v1, $v1
    sw $v1, 160($sp)
    lw $v1, 160($sp)
    lw $v0, 156($sp)
    add $v1, $v0, $v1
    sw $v1, 92($sp)
    lw $v1, 92($sp)
    move $v1, $v1
    sw $v1, 164($sp)
    lw $v1, 164($sp)
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
    li $v1, 0
    sw $v1, 88($sp)
    lw $v1, 88($sp)
    move $v1, $v1
    sw $v1, 168($sp)
    lw $v1, 168($sp)
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
    .globl BS_ved_Init
BS_ved_Init:

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
L_ved35:
    li $t6, 1
    move $t4, $t6
    lw $v1, 196($sp)
    add $t5, $t4, $v1
    lw $v0, 200($sp)
    sne $t3, $v0, $t5
    beqz $t3 L_ved36
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
    j L_ved35
L_ved36:
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
L_ved37:
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
    beqz $v0 L_ved38
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
    sw $v1, 296($sp)
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
    sw $v1, 292($sp)
    lw $v1, 292($sp)
    lw $v0, 296($sp)
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
    j L_ved37
L_ved38:
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
