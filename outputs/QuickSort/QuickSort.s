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
    la $t2, QS_ved_Start
    sw $t2, 0($s1)
    la $t3, QS_ved_Sort
    sw $t3, 4($s1)
    la $t4, QS_ved_Print
    sw $t4, 8($s1)
    la $t5, QS_ved_Init
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
    .globl QS_ved_Start
QS_ved_Start:

    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 152
    sw $s0, 84($sp)
    sw $s1, 80($sp)
    sw $s2, 76($sp)
    sw $s3, 72($sp)
    sw $s4, 68($sp)
    sw $s5, 64($sp)
    sw $s6, 60($sp)
    sw $s7, 56($sp)
    sw $a0, 120($sp)
    move $s1, $a1
    lw $v1, 120($sp)
    lw $s3, 0($v1)
    lw $s4, 12($s3)
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
    lw $v0, 120($sp)
    move $a0, $v0
    move $a1, $s1
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
    move $s0, $v0
    move $s5, $s0
    move $v1, $s5
    sw $v1, 100($sp)
    lw $v1, 120($sp)
    lw $s6, 0($v1)
    lw $s7, 8($s6)
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
    lw $v0, 120($sp)
    move $a0, $v0
    jalr $s7
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
    move $t0, $t9
    move $v1, $t0
    sw $v1, 100($sp)
    li $t8, 9999
    move $t1, $t8
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $t1
    addi $v0, $0, 1
    syscall
    la $a0, newl
    li $v0, 4
    syscall
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    lw $v1, 120($sp)
    lw $t2, 8($v1)
    li $t7, 1
    move $t3, $t7
    sub $t5, $t2, $t3
    move $t4, $t5
    move $v1, $t4
    sw $v1, 100($sp)
    li $s2, 0
    move $v1, $s2
    sw $v1, 104($sp)
    lw $v1, 120($sp)
    lw $t6, 0($v1)
    lw $v0, 4($t6)
    sw $v0, 108($sp)
    lw $v1, 108($sp)
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
    lw $v0, 120($sp)
    move $a0, $v0
    lw $v0, 104($sp)
    move $a1, $v0
    lw $v0, 100($sp)
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
    sw $v1, 112($sp)
    lw $v1, 112($sp)
    move $v1, $v1
    sw $v1, 100($sp)
    lw $v1, 120($sp)
    lw $v0, 0($v1)
    sw $v0, 116($sp)
    lw $v1, 116($sp)
    lw $v0, 8($v1)
    sw $v0, 132($sp)
    lw $v1, 132($sp)
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
    lw $v0, 120($sp)
    move $a0, $v0
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
    sw $v1, 128($sp)
    lw $v1, 128($sp)
    move $v1, $v1
    sw $v1, 100($sp)
    li $v1, 0
    sw $v1, 88($sp)
    lw $v1, 88($sp)
    move $v1, $v1
    sw $v1, 124($sp)
    lw $v1, 124($sp)
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
    .globl QS_ved_Sort
QS_ved_Sort:

    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 864
    sw $s0, 84($sp)
    sw $s1, 80($sp)
    sw $s2, 76($sp)
    sw $s3, 72($sp)
    sw $s4, 68($sp)
    sw $s5, 64($sp)
    sw $s6, 60($sp)
    sw $s7, 56($sp)
    sw $a0, 840($sp)
    sw $a1, 832($sp)
    sw $a2, 844($sp)
    li $t1, 0
    move $t2, $t1
    move $v1, $t2
    sw $v1, 828($sp)
    lw $v1, 844($sp)
    lw $v0, 832($sp)
    sle $t0, $v0, $v1
    move $t3, $t0
    lw $v1, 844($sp)
    lw $v0, 832($sp)
    sne $s7, $v0, $v1
    move $t4, $s7
    add $s3, $t3, $t4
    li $s5, 2
    sne $s6, $s3, $s5
    move $t5, $s6
    li $s1, 1
    move $s0, $s1
    sne $s4, $s0, $t5
    move $t5, $s4
    beqz $t5 L_ved1
    lw $v1, 840($sp)
    lw $v0, 4($v1)
    sw $v0, 536($sp)
    li $s2, 4
    li $t9, 1
    move $t8, $t9
    lw $v1, 844($sp)
    add $t7, $t8, $v1
    move $t6, $s2
    mult $t6, $t7
    mflo $v1
    sw $v1, 540($sp)
    lw $v1, 540($sp)
    lw $v0, 536($sp)
    add $v1, $v0, $v1
    sw $v1, 532($sp)
    lw $v1, 532($sp)
    move $v1, $v1
    sw $v1, 544($sp)
    lw $v1, 544($sp)
    lw $v0, 0($v1)
    sw $v0, 548($sp)
    lw $v1, 548($sp)
    move $v1, $v1
    sw $v1, 816($sp)
    li $v1, 1
    sw $v1, 528($sp)
    lw $v1, 528($sp)
    move $v1, $v1
    sw $v1, 552($sp)
    lw $v1, 552($sp)
    lw $v0, 832($sp)
    sub $v1, $v0, $v1
    sw $v1, 524($sp)
    lw $v1, 524($sp)
    move $v1, $v1
    sw $v1, 556($sp)
    lw $v1, 556($sp)
    move $v1, $v1
    sw $v1, 836($sp)
    lw $v1, 844($sp)
    move $v1, $v1
    sw $v1, 824($sp)
    li $v1, 1
    sw $v1, 520($sp)
    lw $v1, 520($sp)
    move $v1, $v1
    sw $v1, 560($sp)
    lw $v1, 560($sp)
    move $v1, $v1
    sw $v1, 820($sp)
L_ved2:
    lw $v0, 820($sp)
    beqz $v0 L_ved3
    li $v1, 1
    sw $v1, 516($sp)
    lw $v1, 516($sp)
    move $v1, $v1
    sw $v1, 564($sp)
    lw $v1, 564($sp)
    move $v1, $v1
    sw $v1, 812($sp)
L_ved4:
    lw $v0, 812($sp)
    beqz $v0 L_ved5
    li $v1, 1
    sw $v1, 512($sp)
    lw $v1, 512($sp)
    move $v1, $v1
    sw $v1, 568($sp)
    lw $v1, 568($sp)
    lw $v0, 836($sp)
    add $v1, $v0, $v1
    sw $v1, 508($sp)
    lw $v1, 508($sp)
    move $v1, $v1
    sw $v1, 572($sp)
    lw $v1, 572($sp)
    move $v1, $v1
    sw $v1, 836($sp)
    lw $v1, 840($sp)
    lw $v0, 4($v1)
    sw $v0, 576($sp)
    li $v1, 4
    sw $v1, 504($sp)
    li $v1, 1
    sw $v1, 500($sp)
    lw $v1, 500($sp)
    move $v1, $v1
    sw $v1, 492($sp)
    lw $v1, 836($sp)
    lw $v0, 492($sp)
    add $v1, $v0, $v1
    sw $v1, 496($sp)
    lw $v1, 504($sp)
    move $v1, $v1
    sw $v1, 484($sp)
    lw $v1, 496($sp)
    lw $v0, 484($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 488($sp)
    lw $v1, 488($sp)
    lw $v0, 576($sp)
    add $v1, $v0, $v1
    sw $v1, 480($sp)
    lw $v1, 480($sp)
    move $v1, $v1
    sw $v1, 580($sp)
    lw $v1, 580($sp)
    lw $v0, 0($v1)
    sw $v0, 584($sp)
    lw $v1, 584($sp)
    move $v1, $v1
    sw $v1, 808($sp)
    li $v1, 1
    sw $v1, 476($sp)
    lw $v1, 476($sp)
    move $v1, $v1
    sw $v1, 588($sp)
    lw $v1, 588($sp)
    lw $v0, 816($sp)
    sub $v1, $v0, $v1
    sw $v1, 472($sp)
    lw $v1, 472($sp)
    move $v1, $v1
    sw $v1, 592($sp)
    lw $v1, 592($sp)
    lw $v0, 808($sp)
    sle $v1, $v0, $v1
    sw $v1, 468($sp)
    lw $v1, 468($sp)
    move $v1, $v1
    sw $v1, 804($sp)
    li $v1, 1
    sw $v1, 464($sp)
    lw $v1, 464($sp)
    lw $v0, 804($sp)
    sne $v1, $v0, $v1
    sw $v1, 460($sp)
    lw $v1, 460($sp)
    move $v1, $v1
    sw $v1, 800($sp)
    lw $v0, 800($sp)
    beqz $v0 L_ved6
    li $v1, 0
    sw $v1, 456($sp)
    lw $v1, 456($sp)
    move $v1, $v1
    sw $v1, 796($sp)
    lw $v1, 796($sp)
    move $v1, $v1
    sw $v1, 812($sp)
    j L_ved7
L_ved6:
    li $v1, 1
    sw $v1, 452($sp)
    lw $v1, 452($sp)
    move $v1, $v1
    sw $v1, 792($sp)
    lw $v1, 792($sp)
    move $v1, $v1
    sw $v1, 812($sp)
L_ved7:
    j L_ved4
L_ved5:
    li $v1, 1
    sw $v1, 448($sp)
    lw $v1, 448($sp)
    move $v1, $v1
    sw $v1, 788($sp)
    lw $v1, 788($sp)
    move $v1, $v1
    sw $v1, 812($sp)
L_ved8:
    lw $v0, 812($sp)
    beqz $v0 L_ved9
    li $v1, 1
    sw $v1, 444($sp)
    lw $v1, 444($sp)
    move $v1, $v1
    sw $v1, 784($sp)
    lw $v1, 784($sp)
    lw $v0, 824($sp)
    sub $v1, $v0, $v1
    sw $v1, 440($sp)
    lw $v1, 440($sp)
    move $v1, $v1
    sw $v1, 780($sp)
    lw $v1, 780($sp)
    move $v1, $v1
    sw $v1, 824($sp)
    lw $v1, 840($sp)
    lw $v0, 4($v1)
    sw $v0, 776($sp)
    li $v1, 4
    sw $v1, 436($sp)
    li $v1, 1
    sw $v1, 432($sp)
    lw $v1, 432($sp)
    move $v1, $v1
    sw $v1, 424($sp)
    lw $v1, 824($sp)
    lw $v0, 424($sp)
    add $v1, $v0, $v1
    sw $v1, 428($sp)
    lw $v1, 436($sp)
    move $v1, $v1
    sw $v1, 416($sp)
    lw $v1, 428($sp)
    lw $v0, 416($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 420($sp)
    lw $v1, 420($sp)
    lw $v0, 776($sp)
    add $v1, $v0, $v1
    sw $v1, 412($sp)
    lw $v1, 412($sp)
    move $v1, $v1
    sw $v1, 768($sp)
    lw $v1, 768($sp)
    lw $v0, 0($v1)
    sw $v0, 772($sp)
    lw $v1, 772($sp)
    move $v1, $v1
    sw $v1, 808($sp)
    li $v1, 1
    sw $v1, 408($sp)
    lw $v1, 408($sp)
    move $v1, $v1
    sw $v1, 764($sp)
    lw $v1, 764($sp)
    lw $v0, 808($sp)
    sub $v1, $v0, $v1
    sw $v1, 404($sp)
    lw $v1, 404($sp)
    move $v1, $v1
    sw $v1, 760($sp)
    lw $v1, 760($sp)
    lw $v0, 816($sp)
    sle $v1, $v0, $v1
    sw $v1, 400($sp)
    lw $v1, 400($sp)
    move $v1, $v1
    sw $v1, 756($sp)
    li $v1, 1
    sw $v1, 396($sp)
    lw $v1, 396($sp)
    lw $v0, 756($sp)
    sne $v1, $v0, $v1
    sw $v1, 392($sp)
    lw $v1, 392($sp)
    move $v1, $v1
    sw $v1, 752($sp)
    lw $v0, 752($sp)
    beqz $v0 L_ved10
    li $v1, 0
    sw $v1, 388($sp)
    lw $v1, 388($sp)
    move $v1, $v1
    sw $v1, 748($sp)
    lw $v1, 748($sp)
    move $v1, $v1
    sw $v1, 812($sp)
    j L_ved11
L_ved10:
    li $v1, 1
    sw $v1, 384($sp)
    lw $v1, 384($sp)
    move $v1, $v1
    sw $v1, 744($sp)
    lw $v1, 744($sp)
    move $v1, $v1
    sw $v1, 812($sp)
L_ved11:
    j L_ved8
L_ved9:
    lw $v1, 840($sp)
    lw $v0, 4($v1)
    sw $v0, 740($sp)
    li $v1, 4
    sw $v1, 380($sp)
    li $v1, 1
    sw $v1, 376($sp)
    lw $v1, 376($sp)
    move $v1, $v1
    sw $v1, 368($sp)
    lw $v1, 836($sp)
    lw $v0, 368($sp)
    add $v1, $v0, $v1
    sw $v1, 372($sp)
    lw $v1, 380($sp)
    move $v1, $v1
    sw $v1, 360($sp)
    lw $v1, 372($sp)
    lw $v0, 360($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 364($sp)
    lw $v1, 364($sp)
    lw $v0, 740($sp)
    add $v1, $v0, $v1
    sw $v1, 356($sp)
    lw $v1, 356($sp)
    move $v1, $v1
    sw $v1, 732($sp)
    lw $v1, 732($sp)
    lw $v0, 0($v1)
    sw $v0, 736($sp)
    lw $v1, 736($sp)
    move $v1, $v1
    sw $v1, 828($sp)
    lw $v1, 840($sp)
    lw $v0, 4($v1)
    sw $v0, 728($sp)
    li $v1, 4
    sw $v1, 352($sp)
    li $v1, 1
    sw $v1, 348($sp)
    lw $v1, 348($sp)
    move $v1, $v1
    sw $v1, 340($sp)
    lw $v1, 824($sp)
    lw $v0, 340($sp)
    add $v1, $v0, $v1
    sw $v1, 344($sp)
    lw $v1, 352($sp)
    move $v1, $v1
    sw $v1, 332($sp)
    lw $v1, 344($sp)
    lw $v0, 332($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 336($sp)
    lw $v1, 336($sp)
    lw $v0, 728($sp)
    add $v1, $v0, $v1
    sw $v1, 328($sp)
    lw $v1, 328($sp)
    move $v1, $v1
    sw $v1, 720($sp)
    lw $v1, 720($sp)
    lw $v0, 0($v1)
    sw $v0, 724($sp)
    lw $v1, 840($sp)
    lw $v0, 4($v1)
    sw $v0, 716($sp)
    li $v1, 4
    sw $v1, 324($sp)
    li $v1, 1
    sw $v1, 320($sp)
    lw $v1, 320($sp)
    move $v1, $v1
    sw $v1, 312($sp)
    lw $v1, 836($sp)
    lw $v0, 312($sp)
    add $v1, $v0, $v1
    sw $v1, 316($sp)
    lw $v1, 324($sp)
    move $v1, $v1
    sw $v1, 304($sp)
    lw $v1, 316($sp)
    lw $v0, 304($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 308($sp)
    lw $v1, 308($sp)
    lw $v0, 716($sp)
    add $v1, $v0, $v1
    sw $v1, 300($sp)
    lw $v1, 300($sp)
    move $v1, $v1
    sw $v1, 712($sp)
    lw $v0, 712($sp)
    lw $v1, 724($sp)
    sw $v1, 0($v0)
    lw $v1, 840($sp)
    lw $v0, 4($v1)
    sw $v0, 708($sp)
    li $v1, 4
    sw $v1, 296($sp)
    li $v1, 1
    sw $v1, 292($sp)
    lw $v1, 292($sp)
    move $v1, $v1
    sw $v1, 284($sp)
    lw $v1, 824($sp)
    lw $v0, 284($sp)
    add $v1, $v0, $v1
    sw $v1, 288($sp)
    lw $v1, 296($sp)
    move $v1, $v1
    sw $v1, 276($sp)
    lw $v1, 288($sp)
    lw $v0, 276($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 280($sp)
    lw $v1, 280($sp)
    lw $v0, 708($sp)
    add $v1, $v0, $v1
    sw $v1, 272($sp)
    lw $v1, 272($sp)
    move $v1, $v1
    sw $v1, 704($sp)
    lw $v0, 704($sp)
    lw $v1, 828($sp)
    sw $v1, 0($v0)
    lw $v1, 836($sp)
    lw $v0, 824($sp)
    sle $v1, $v0, $v1
    sw $v1, 268($sp)
    lw $v1, 268($sp)
    move $v1, $v1
    sw $v1, 700($sp)
    lw $v0, 700($sp)
    beqz $v0 L_ved12
    li $v1, 0
    sw $v1, 264($sp)
    lw $v1, 264($sp)
    move $v1, $v1
    sw $v1, 696($sp)
    lw $v1, 696($sp)
    move $v1, $v1
    sw $v1, 820($sp)
    j L_ved13
L_ved12:
    li $v1, 1
    sw $v1, 260($sp)
    lw $v1, 260($sp)
    move $v1, $v1
    sw $v1, 692($sp)
    lw $v1, 692($sp)
    move $v1, $v1
    sw $v1, 820($sp)
L_ved13:
    j L_ved2
L_ved3:
    lw $v1, 840($sp)
    lw $v0, 4($v1)
    sw $v0, 688($sp)
    li $v1, 4
    sw $v1, 256($sp)
    li $v1, 1
    sw $v1, 252($sp)
    lw $v1, 252($sp)
    move $v1, $v1
    sw $v1, 244($sp)
    lw $v1, 836($sp)
    lw $v0, 244($sp)
    add $v1, $v0, $v1
    sw $v1, 248($sp)
    lw $v1, 256($sp)
    move $v1, $v1
    sw $v1, 236($sp)
    lw $v1, 248($sp)
    lw $v0, 236($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 240($sp)
    lw $v1, 240($sp)
    lw $v0, 688($sp)
    add $v1, $v0, $v1
    sw $v1, 232($sp)
    lw $v1, 232($sp)
    move $v1, $v1
    sw $v1, 680($sp)
    lw $v1, 680($sp)
    lw $v0, 0($v1)
    sw $v0, 684($sp)
    lw $v1, 840($sp)
    lw $v0, 4($v1)
    sw $v0, 676($sp)
    li $v1, 4
    sw $v1, 228($sp)
    li $v1, 1
    sw $v1, 224($sp)
    lw $v1, 224($sp)
    move $v1, $v1
    sw $v1, 216($sp)
    lw $v1, 824($sp)
    lw $v0, 216($sp)
    add $v1, $v0, $v1
    sw $v1, 220($sp)
    lw $v1, 228($sp)
    move $v1, $v1
    sw $v1, 208($sp)
    lw $v1, 220($sp)
    lw $v0, 208($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 212($sp)
    lw $v1, 212($sp)
    lw $v0, 676($sp)
    add $v1, $v0, $v1
    sw $v1, 204($sp)
    lw $v1, 204($sp)
    move $v1, $v1
    sw $v1, 672($sp)
    lw $v0, 672($sp)
    lw $v1, 684($sp)
    sw $v1, 0($v0)
    lw $v1, 840($sp)
    lw $v0, 4($v1)
    sw $v0, 668($sp)
    li $v1, 4
    sw $v1, 200($sp)
    li $v1, 1
    sw $v1, 196($sp)
    lw $v1, 196($sp)
    move $v1, $v1
    sw $v1, 188($sp)
    lw $v1, 844($sp)
    lw $v0, 188($sp)
    add $v1, $v0, $v1
    sw $v1, 192($sp)
    lw $v1, 200($sp)
    move $v1, $v1
    sw $v1, 180($sp)
    lw $v1, 192($sp)
    lw $v0, 180($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 184($sp)
    lw $v1, 184($sp)
    lw $v0, 668($sp)
    add $v1, $v0, $v1
    sw $v1, 176($sp)
    lw $v1, 176($sp)
    move $v1, $v1
    sw $v1, 660($sp)
    lw $v1, 660($sp)
    lw $v0, 0($v1)
    sw $v0, 664($sp)
    lw $v1, 840($sp)
    lw $v0, 4($v1)
    sw $v0, 656($sp)
    li $v1, 4
    sw $v1, 172($sp)
    li $v1, 1
    sw $v1, 168($sp)
    lw $v1, 168($sp)
    move $v1, $v1
    sw $v1, 160($sp)
    lw $v1, 836($sp)
    lw $v0, 160($sp)
    add $v1, $v0, $v1
    sw $v1, 164($sp)
    lw $v1, 172($sp)
    move $v1, $v1
    sw $v1, 152($sp)
    lw $v1, 164($sp)
    lw $v0, 152($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 156($sp)
    lw $v1, 156($sp)
    lw $v0, 656($sp)
    add $v1, $v0, $v1
    sw $v1, 148($sp)
    lw $v1, 148($sp)
    move $v1, $v1
    sw $v1, 652($sp)
    lw $v0, 652($sp)
    lw $v1, 664($sp)
    sw $v1, 0($v0)
    lw $v1, 840($sp)
    lw $v0, 4($v1)
    sw $v0, 648($sp)
    li $v1, 4
    sw $v1, 144($sp)
    li $v1, 1
    sw $v1, 140($sp)
    lw $v1, 140($sp)
    move $v1, $v1
    sw $v1, 132($sp)
    lw $v1, 844($sp)
    lw $v0, 132($sp)
    add $v1, $v0, $v1
    sw $v1, 136($sp)
    lw $v1, 144($sp)
    move $v1, $v1
    sw $v1, 124($sp)
    lw $v1, 136($sp)
    lw $v0, 124($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 128($sp)
    lw $v1, 128($sp)
    lw $v0, 648($sp)
    add $v1, $v0, $v1
    sw $v1, 120($sp)
    lw $v1, 120($sp)
    move $v1, $v1
    sw $v1, 644($sp)
    lw $v0, 644($sp)
    lw $v1, 828($sp)
    sw $v1, 0($v0)
    li $v1, 1
    sw $v1, 116($sp)
    lw $v1, 116($sp)
    move $v1, $v1
    sw $v1, 640($sp)
    lw $v1, 640($sp)
    lw $v0, 836($sp)
    sub $v1, $v0, $v1
    sw $v1, 112($sp)
    lw $v1, 112($sp)
    move $v1, $v1
    sw $v1, 636($sp)
    lw $v1, 840($sp)
    lw $v0, 0($v1)
    sw $v0, 632($sp)
    lw $v1, 632($sp)
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
    lw $v0, 840($sp)
    move $a0, $v0
    lw $v0, 832($sp)
    move $a1, $v0
    lw $v0, 636($sp)
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
    sw $v1, 108($sp)
    lw $v1, 108($sp)
    move $v1, $v1
    sw $v1, 624($sp)
    lw $v1, 624($sp)
    li $v1, 1
    sw $v1, 104($sp)
    lw $v1, 104($sp)
    move $v1, $v1
    sw $v1, 620($sp)
    lw $v1, 620($sp)
    lw $v0, 836($sp)
    add $v1, $v0, $v1
    sw $v1, 100($sp)
    lw $v1, 100($sp)
    move $v1, $v1
    sw $v1, 616($sp)
    lw $v1, 840($sp)
    lw $v0, 0($v1)
    sw $v0, 612($sp)
    lw $v1, 612($sp)
    lw $v0, 4($v1)
    sw $v0, 608($sp)
    lw $v1, 608($sp)
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
    lw $v0, 840($sp)
    move $a0, $v0
    lw $v0, 616($sp)
    move $a1, $v0
    lw $v0, 844($sp)
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
    sw $v1, 604($sp)
    lw $v1, 604($sp)
    j L_ved14
L_ved1:
    li $v1, 0
    sw $v1, 92($sp)
    lw $v1, 92($sp)
    move $v1, $v1
    sw $v1, 600($sp)
    lw $v1, 600($sp)
L_ved14:
    li $v1, 0
    sw $v1, 88($sp)
    lw $v1, 88($sp)
    move $v1, $v1
    sw $v1, 596($sp)
    lw $v1, 596($sp)
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
    .globl QS_ved_Print
QS_ved_Print:

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
    li $t5, 0
    move $s2, $t5
    move $v1, $s2
    sw $v1, 116($sp)
L_ved15:
    lw $v1, 112($sp)
    lw $s3, 8($v1)
    li $t6, 1
    move $s4, $t6
    sub $t7, $s3, $s4
    move $s5, $t7
    lw $v0, 116($sp)
    sle $t8, $v0, $s5
    move $s6, $t8
    beqz $s6 L_ved16
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
    j L_ved15
L_ved16:
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
    .globl QS_ved_Init
QS_ved_Init:

    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 668
    sw $s0, 84($sp)
    sw $s1, 80($sp)
    sw $s2, 76($sp)
    sw $s3, 72($sp)
    sw $s4, 68($sp)
    sw $s5, 64($sp)
    sw $s6, 60($sp)
    sw $s7, 56($sp)
    sw $a0, 648($sp)
    sw $a1, 468($sp)
    lw $v1, 648($sp)
    move $s2, $v1
    lw $v1, 468($sp)
    sw $v1, 8($s2)
    li $s0, 4
    li $t8, 1
    move $t7, $t8
    lw $v1, 468($sp)
    add $t9, $t7, $v1
    move $t4, $s0
    mult $t4, $t9
    mflo $t6
    sw $a0, -12($fp)
    sw $v0, -16($fp)
    add $a0, $0, $t6
    addi $v0, $0, 9
    syscall
    move $t5, $v0
    lw $a0, -12($fp)
    lw $v0, -16($fp)
    move $v1, $t5
    sw $v1, 476($sp)
    lw $v0, 476($sp)
    lw $v1, 468($sp)
    sw $v1, 0($v0)
    li $t3, 1
    move $v1, $t3
    sw $v1, 472($sp)
L_ved17:
    li $t2, 1
    move $t1, $t2
    lw $v1, 468($sp)
    add $t0, $t1, $v1
    lw $v0, 472($sp)
    sne $s7, $v0, $t0
    beqz $s7 L_ved18
    li $s6, 4
    move $s4, $s6
    lw $v1, 472($sp)
    mult $s4, $v1
    mflo $s3
    lw $v0, 476($sp)
    add $s1, $v0, $s3
    move $s5, $s1
    li $v1, 0
    sw $v1, 464($sp)
    lw $v1, 464($sp)
    sw $v1, 0($s5)
    li $v1, 1
    sw $v1, 460($sp)
    lw $v1, 460($sp)
    move $v1, $v1
    sw $v1, 452($sp)
    lw $v1, 472($sp)
    lw $v0, 452($sp)
    add $v1, $v0, $v1
    sw $v1, 456($sp)
    lw $v1, 456($sp)
    move $v1, $v1
    sw $v1, 472($sp)
    j L_ved17
L_ved18:
    lw $v1, 648($sp)
    move $v1, $v1
    sw $v1, 480($sp)
    lw $v0, 480($sp)
    lw $v1, 476($sp)
    sw $v1, 4($v0)
    li $v1, 0
    sw $v1, 448($sp)
    lw $v1, 448($sp)
    move $v1, $v1
    sw $v1, 484($sp)
    li $v1, 20
    sw $v1, 444($sp)
    lw $v1, 444($sp)
    move $v1, $v1
    sw $v1, 492($sp)
    lw $v1, 648($sp)
    lw $v0, 4($v1)
    sw $v0, 488($sp)
    li $v1, 4
    sw $v1, 440($sp)
    li $v1, 1
    sw $v1, 436($sp)
    lw $v1, 436($sp)
    move $v1, $v1
    sw $v1, 428($sp)
    lw $v1, 484($sp)
    lw $v0, 428($sp)
    add $v1, $v0, $v1
    sw $v1, 432($sp)
    lw $v1, 440($sp)
    move $v1, $v1
    sw $v1, 420($sp)
    lw $v1, 432($sp)
    lw $v0, 420($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 424($sp)
    lw $v1, 424($sp)
    lw $v0, 488($sp)
    add $v1, $v0, $v1
    sw $v1, 416($sp)
    lw $v1, 416($sp)
    move $v1, $v1
    sw $v1, 496($sp)
    lw $v0, 496($sp)
    lw $v1, 492($sp)
    sw $v1, 0($v0)
    li $v1, 1
    sw $v1, 412($sp)
    lw $v1, 412($sp)
    move $v1, $v1
    sw $v1, 500($sp)
    li $v1, 7
    sw $v1, 408($sp)
    lw $v1, 408($sp)
    move $v1, $v1
    sw $v1, 508($sp)
    lw $v1, 648($sp)
    lw $v0, 4($v1)
    sw $v0, 504($sp)
    li $v1, 4
    sw $v1, 404($sp)
    li $v1, 1
    sw $v1, 400($sp)
    lw $v1, 400($sp)
    move $v1, $v1
    sw $v1, 392($sp)
    lw $v1, 500($sp)
    lw $v0, 392($sp)
    add $v1, $v0, $v1
    sw $v1, 396($sp)
    lw $v1, 404($sp)
    move $v1, $v1
    sw $v1, 384($sp)
    lw $v1, 396($sp)
    lw $v0, 384($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 388($sp)
    lw $v1, 388($sp)
    lw $v0, 504($sp)
    add $v1, $v0, $v1
    sw $v1, 380($sp)
    lw $v1, 380($sp)
    move $v1, $v1
    sw $v1, 512($sp)
    lw $v0, 512($sp)
    lw $v1, 508($sp)
    sw $v1, 0($v0)
    li $v1, 2
    sw $v1, 376($sp)
    lw $v1, 376($sp)
    move $v1, $v1
    sw $v1, 516($sp)
    li $v1, 12
    sw $v1, 372($sp)
    lw $v1, 372($sp)
    move $v1, $v1
    sw $v1, 524($sp)
    lw $v1, 648($sp)
    lw $v0, 4($v1)
    sw $v0, 520($sp)
    li $v1, 4
    sw $v1, 368($sp)
    li $v1, 1
    sw $v1, 364($sp)
    lw $v1, 364($sp)
    move $v1, $v1
    sw $v1, 356($sp)
    lw $v1, 516($sp)
    lw $v0, 356($sp)
    add $v1, $v0, $v1
    sw $v1, 360($sp)
    lw $v1, 368($sp)
    move $v1, $v1
    sw $v1, 348($sp)
    lw $v1, 360($sp)
    lw $v0, 348($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 352($sp)
    lw $v1, 352($sp)
    lw $v0, 520($sp)
    add $v1, $v0, $v1
    sw $v1, 344($sp)
    lw $v1, 344($sp)
    move $v1, $v1
    sw $v1, 528($sp)
    lw $v0, 528($sp)
    lw $v1, 524($sp)
    sw $v1, 0($v0)
    li $v1, 3
    sw $v1, 340($sp)
    lw $v1, 340($sp)
    move $v1, $v1
    sw $v1, 644($sp)
    li $v1, 18
    sw $v1, 336($sp)
    lw $v1, 336($sp)
    move $v1, $v1
    sw $v1, 640($sp)
    lw $v1, 648($sp)
    lw $v0, 4($v1)
    sw $v0, 636($sp)
    li $v1, 4
    sw $v1, 332($sp)
    li $v1, 1
    sw $v1, 328($sp)
    lw $v1, 328($sp)
    move $v1, $v1
    sw $v1, 320($sp)
    lw $v1, 644($sp)
    lw $v0, 320($sp)
    add $v1, $v0, $v1
    sw $v1, 324($sp)
    lw $v1, 332($sp)
    move $v1, $v1
    sw $v1, 312($sp)
    lw $v1, 324($sp)
    lw $v0, 312($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 316($sp)
    lw $v1, 316($sp)
    lw $v0, 636($sp)
    add $v1, $v0, $v1
    sw $v1, 308($sp)
    lw $v1, 308($sp)
    move $v1, $v1
    sw $v1, 632($sp)
    lw $v0, 632($sp)
    lw $v1, 640($sp)
    sw $v1, 0($v0)
    li $v1, 4
    sw $v1, 304($sp)
    lw $v1, 304($sp)
    move $v1, $v1
    sw $v1, 628($sp)
    li $v1, 2
    sw $v1, 300($sp)
    lw $v1, 300($sp)
    move $v1, $v1
    sw $v1, 624($sp)
    lw $v1, 648($sp)
    lw $v0, 4($v1)
    sw $v0, 620($sp)
    li $v1, 4
    sw $v1, 296($sp)
    li $v1, 1
    sw $v1, 292($sp)
    lw $v1, 292($sp)
    move $v1, $v1
    sw $v1, 284($sp)
    lw $v1, 628($sp)
    lw $v0, 284($sp)
    add $v1, $v0, $v1
    sw $v1, 288($sp)
    lw $v1, 296($sp)
    move $v1, $v1
    sw $v1, 276($sp)
    lw $v1, 288($sp)
    lw $v0, 276($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 280($sp)
    lw $v1, 280($sp)
    lw $v0, 620($sp)
    add $v1, $v0, $v1
    sw $v1, 272($sp)
    lw $v1, 272($sp)
    move $v1, $v1
    sw $v1, 616($sp)
    lw $v0, 616($sp)
    lw $v1, 624($sp)
    sw $v1, 0($v0)
    li $v1, 5
    sw $v1, 268($sp)
    lw $v1, 268($sp)
    move $v1, $v1
    sw $v1, 612($sp)
    li $v1, 11
    sw $v1, 264($sp)
    lw $v1, 264($sp)
    move $v1, $v1
    sw $v1, 608($sp)
    lw $v1, 648($sp)
    lw $v0, 4($v1)
    sw $v0, 604($sp)
    li $v1, 4
    sw $v1, 260($sp)
    li $v1, 1
    sw $v1, 256($sp)
    lw $v1, 256($sp)
    move $v1, $v1
    sw $v1, 248($sp)
    lw $v1, 612($sp)
    lw $v0, 248($sp)
    add $v1, $v0, $v1
    sw $v1, 252($sp)
    lw $v1, 260($sp)
    move $v1, $v1
    sw $v1, 240($sp)
    lw $v1, 252($sp)
    lw $v0, 240($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 244($sp)
    lw $v1, 244($sp)
    lw $v0, 604($sp)
    add $v1, $v0, $v1
    sw $v1, 236($sp)
    lw $v1, 236($sp)
    move $v1, $v1
    sw $v1, 600($sp)
    lw $v0, 600($sp)
    lw $v1, 608($sp)
    sw $v1, 0($v0)
    li $v1, 6
    sw $v1, 232($sp)
    lw $v1, 232($sp)
    move $v1, $v1
    sw $v1, 596($sp)
    li $v1, 6
    sw $v1, 228($sp)
    lw $v1, 228($sp)
    move $v1, $v1
    sw $v1, 592($sp)
    lw $v1, 648($sp)
    lw $v0, 4($v1)
    sw $v0, 588($sp)
    li $v1, 4
    sw $v1, 224($sp)
    li $v1, 1
    sw $v1, 220($sp)
    lw $v1, 220($sp)
    move $v1, $v1
    sw $v1, 212($sp)
    lw $v1, 596($sp)
    lw $v0, 212($sp)
    add $v1, $v0, $v1
    sw $v1, 216($sp)
    lw $v1, 224($sp)
    move $v1, $v1
    sw $v1, 204($sp)
    lw $v1, 216($sp)
    lw $v0, 204($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 208($sp)
    lw $v1, 208($sp)
    lw $v0, 588($sp)
    add $v1, $v0, $v1
    sw $v1, 200($sp)
    lw $v1, 200($sp)
    move $v1, $v1
    sw $v1, 584($sp)
    lw $v0, 584($sp)
    lw $v1, 592($sp)
    sw $v1, 0($v0)
    li $v1, 7
    sw $v1, 196($sp)
    lw $v1, 196($sp)
    move $v1, $v1
    sw $v1, 580($sp)
    li $v1, 9
    sw $v1, 192($sp)
    lw $v1, 192($sp)
    move $v1, $v1
    sw $v1, 576($sp)
    lw $v1, 648($sp)
    lw $v0, 4($v1)
    sw $v0, 572($sp)
    li $v1, 4
    sw $v1, 188($sp)
    li $v1, 1
    sw $v1, 184($sp)
    lw $v1, 184($sp)
    move $v1, $v1
    sw $v1, 176($sp)
    lw $v1, 580($sp)
    lw $v0, 176($sp)
    add $v1, $v0, $v1
    sw $v1, 180($sp)
    lw $v1, 188($sp)
    move $v1, $v1
    sw $v1, 168($sp)
    lw $v1, 180($sp)
    lw $v0, 168($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 172($sp)
    lw $v1, 172($sp)
    lw $v0, 572($sp)
    add $v1, $v0, $v1
    sw $v1, 164($sp)
    lw $v1, 164($sp)
    move $v1, $v1
    sw $v1, 568($sp)
    lw $v0, 568($sp)
    lw $v1, 576($sp)
    sw $v1, 0($v0)
    li $v1, 8
    sw $v1, 160($sp)
    lw $v1, 160($sp)
    move $v1, $v1
    sw $v1, 564($sp)
    li $v1, 19
    sw $v1, 156($sp)
    lw $v1, 156($sp)
    move $v1, $v1
    sw $v1, 560($sp)
    lw $v1, 648($sp)
    lw $v0, 4($v1)
    sw $v0, 556($sp)
    li $v1, 4
    sw $v1, 152($sp)
    li $v1, 1
    sw $v1, 148($sp)
    lw $v1, 148($sp)
    move $v1, $v1
    sw $v1, 140($sp)
    lw $v1, 564($sp)
    lw $v0, 140($sp)
    add $v1, $v0, $v1
    sw $v1, 144($sp)
    lw $v1, 152($sp)
    move $v1, $v1
    sw $v1, 132($sp)
    lw $v1, 144($sp)
    lw $v0, 132($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 136($sp)
    lw $v1, 136($sp)
    lw $v0, 556($sp)
    add $v1, $v0, $v1
    sw $v1, 128($sp)
    lw $v1, 128($sp)
    move $v1, $v1
    sw $v1, 552($sp)
    lw $v0, 552($sp)
    lw $v1, 560($sp)
    sw $v1, 0($v0)
    li $v1, 9
    sw $v1, 124($sp)
    lw $v1, 124($sp)
    move $v1, $v1
    sw $v1, 548($sp)
    li $v1, 5
    sw $v1, 120($sp)
    lw $v1, 120($sp)
    move $v1, $v1
    sw $v1, 544($sp)
    lw $v1, 648($sp)
    lw $v0, 4($v1)
    sw $v0, 540($sp)
    li $v1, 4
    sw $v1, 116($sp)
    li $v1, 1
    sw $v1, 112($sp)
    lw $v1, 112($sp)
    move $v1, $v1
    sw $v1, 104($sp)
    lw $v1, 548($sp)
    lw $v0, 104($sp)
    add $v1, $v0, $v1
    sw $v1, 108($sp)
    lw $v1, 116($sp)
    move $v1, $v1
    sw $v1, 96($sp)
    lw $v1, 108($sp)
    lw $v0, 96($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 100($sp)
    lw $v1, 100($sp)
    lw $v0, 540($sp)
    add $v1, $v0, $v1
    sw $v1, 92($sp)
    lw $v1, 92($sp)
    move $v1, $v1
    sw $v1, 536($sp)
    lw $v0, 536($sp)
    lw $v1, 544($sp)
    sw $v1, 0($v0)
    li $v1, 0
    sw $v1, 88($sp)
    lw $v1, 88($sp)
    move $v1, $v1
    sw $v1, 532($sp)
    lw $v1, 532($sp)
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
