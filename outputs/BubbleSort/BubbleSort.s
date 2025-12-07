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
    la $t2, BBS_ved_Start
    sw $t2, 0($s1)
    la $t3, BBS_ved_Sort
    sw $t3, 4($s1)
    la $t4, BBS_ved_Print
    sw $t4, 8($s1)
    la $t5, BBS_ved_Init
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
    .globl BBS_ved_Start
BBS_ved_Start:

    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 120
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
    lw $s2, 0($s0)
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
    move $a0, $s0
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
    move $t8, $v0
    move $s4, $t8
    lw $s5, 0($s0)
    lw $s6, 8($s5)
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
    li $t7, 99999
    move $t0, $t7
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
    lw $t1, 0($s0)
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
    move $a0, $s0
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
    move $t6, $v0
    move $t3, $t6
    lw $t4, 0($s0)
    lw $t5, 8($t4)
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
    jalr $t5
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
    sw $v1, 96($sp)
    lw $v1, 96($sp)
    li $v1, 0
    sw $v1, 88($sp)
    lw $v1, 88($sp)
    move $v1, $v1
    sw $v1, 100($sp)
    lw $v1, 100($sp)
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
    .globl BBS_ved_Sort
BBS_ved_Sort:

    sw $fp, -4($sp)
    sw $ra, -8($sp)
    move $fp, $sp
    subu $sp, $sp, 488
    sw $s0, 84($sp)
    sw $s1, 80($sp)
    sw $s2, 76($sp)
    sw $s3, 72($sp)
    sw $s4, 68($sp)
    sw $s5, 64($sp)
    sw $s6, 60($sp)
    sw $s7, 56($sp)
    sw $a0, 460($sp)
    lw $v1, 460($sp)
    lw $t1, 8($v1)
    li $s3, 1
    move $t2, $s3
    sub $s5, $t1, $t2
    move $t3, $s5
    move $v1, $t3
    sw $v1, 464($sp)
    li $s4, 0
    move $t4, $s4
    li $t0, 1
    move $t5, $t0
    sub $s6, $t4, $t5
    move $t6, $s6
    move $v1, $t6
    sw $v1, 468($sp)
L_ved1:
    li $s7, 1
    move $t7, $s7
    lw $v0, 464($sp)
    sub $s0, $v0, $t7
    move $t8, $s0
    lw $v0, 468($sp)
    sle $s1, $v0, $t8
    move $t9, $s1
    beqz $t9 L_ved2
    li $s2, 1
    move $v1, $s2
    sw $v1, 312($sp)
    lw $v1, 312($sp)
    move $v1, $v1
    sw $v1, 456($sp)
L_ved3:
    lw $v1, 464($sp)
    lw $v0, 456($sp)
    sle $v1, $v0, $v1
    sw $v1, 308($sp)
    lw $v1, 308($sp)
    move $v1, $v1
    sw $v1, 316($sp)
    lw $v0, 316($sp)
    beqz $v0 L_ved4
    li $v1, 1
    sw $v1, 304($sp)
    lw $v1, 304($sp)
    move $v1, $v1
    sw $v1, 320($sp)
    lw $v1, 320($sp)
    lw $v0, 456($sp)
    sub $v1, $v0, $v1
    sw $v1, 300($sp)
    lw $v1, 300($sp)
    move $v1, $v1
    sw $v1, 324($sp)
    lw $v1, 324($sp)
    move $v1, $v1
    sw $v1, 328($sp)
    lw $v1, 460($sp)
    lw $v0, 4($v1)
    sw $v0, 332($sp)
    li $v1, 4
    sw $v1, 296($sp)
    li $v1, 1
    sw $v1, 292($sp)
    lw $v1, 292($sp)
    move $v1, $v1
    sw $v1, 284($sp)
    lw $v1, 328($sp)
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
    lw $v0, 332($sp)
    add $v1, $v0, $v1
    sw $v1, 272($sp)
    lw $v1, 272($sp)
    move $v1, $v1
    sw $v1, 336($sp)
    lw $v1, 336($sp)
    lw $v0, 0($v1)
    sw $v0, 340($sp)
    lw $v1, 340($sp)
    move $v1, $v1
    sw $v1, 440($sp)
    lw $v1, 460($sp)
    lw $v0, 4($v1)
    sw $v0, 344($sp)
    li $v1, 4
    sw $v1, 268($sp)
    li $v1, 1
    sw $v1, 264($sp)
    lw $v1, 264($sp)
    move $v1, $v1
    sw $v1, 256($sp)
    lw $v1, 456($sp)
    lw $v0, 256($sp)
    add $v1, $v0, $v1
    sw $v1, 260($sp)
    lw $v1, 268($sp)
    move $v1, $v1
    sw $v1, 248($sp)
    lw $v1, 260($sp)
    lw $v0, 248($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 252($sp)
    lw $v1, 252($sp)
    lw $v0, 344($sp)
    add $v1, $v0, $v1
    sw $v1, 244($sp)
    lw $v1, 244($sp)
    move $v1, $v1
    sw $v1, 432($sp)
    lw $v1, 432($sp)
    lw $v0, 0($v1)
    sw $v0, 436($sp)
    lw $v1, 436($sp)
    move $v1, $v1
    sw $v1, 444($sp)
    li $v1, 1
    sw $v1, 240($sp)
    lw $v1, 240($sp)
    move $v1, $v1
    sw $v1, 428($sp)
    lw $v1, 428($sp)
    lw $v0, 440($sp)
    sub $v1, $v0, $v1
    sw $v1, 236($sp)
    lw $v1, 236($sp)
    move $v1, $v1
    sw $v1, 424($sp)
    lw $v1, 424($sp)
    lw $v0, 444($sp)
    sle $v1, $v0, $v1
    sw $v1, 232($sp)
    lw $v1, 232($sp)
    move $v1, $v1
    sw $v1, 420($sp)
    lw $v0, 420($sp)
    beqz $v0 L_ved5
    li $v1, 1
    sw $v1, 228($sp)
    lw $v1, 228($sp)
    move $v1, $v1
    sw $v1, 416($sp)
    lw $v1, 416($sp)
    lw $v0, 456($sp)
    sub $v1, $v0, $v1
    sw $v1, 224($sp)
    lw $v1, 224($sp)
    move $v1, $v1
    sw $v1, 412($sp)
    lw $v1, 412($sp)
    move $v1, $v1
    sw $v1, 448($sp)
    lw $v1, 460($sp)
    lw $v0, 4($v1)
    sw $v0, 408($sp)
    li $v1, 4
    sw $v1, 220($sp)
    li $v1, 1
    sw $v1, 216($sp)
    lw $v1, 216($sp)
    move $v1, $v1
    sw $v1, 208($sp)
    lw $v1, 448($sp)
    lw $v0, 208($sp)
    add $v1, $v0, $v1
    sw $v1, 212($sp)
    lw $v1, 220($sp)
    move $v1, $v1
    sw $v1, 200($sp)
    lw $v1, 212($sp)
    lw $v0, 200($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 204($sp)
    lw $v1, 204($sp)
    lw $v0, 408($sp)
    add $v1, $v0, $v1
    sw $v1, 196($sp)
    lw $v1, 196($sp)
    move $v1, $v1
    sw $v1, 400($sp)
    lw $v1, 400($sp)
    lw $v0, 0($v1)
    sw $v0, 404($sp)
    lw $v1, 404($sp)
    move $v1, $v1
    sw $v1, 452($sp)
    lw $v1, 460($sp)
    lw $v0, 4($v1)
    sw $v0, 396($sp)
    li $v1, 4
    sw $v1, 192($sp)
    li $v1, 1
    sw $v1, 188($sp)
    lw $v1, 188($sp)
    move $v1, $v1
    sw $v1, 180($sp)
    lw $v1, 456($sp)
    lw $v0, 180($sp)
    add $v1, $v0, $v1
    sw $v1, 184($sp)
    lw $v1, 192($sp)
    move $v1, $v1
    sw $v1, 172($sp)
    lw $v1, 184($sp)
    lw $v0, 172($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 176($sp)
    lw $v1, 176($sp)
    lw $v0, 396($sp)
    add $v1, $v0, $v1
    sw $v1, 168($sp)
    lw $v1, 168($sp)
    move $v1, $v1
    sw $v1, 388($sp)
    lw $v1, 388($sp)
    lw $v0, 0($v1)
    sw $v0, 392($sp)
    lw $v1, 460($sp)
    lw $v0, 4($v1)
    sw $v0, 384($sp)
    li $v1, 4
    sw $v1, 164($sp)
    li $v1, 1
    sw $v1, 160($sp)
    lw $v1, 160($sp)
    move $v1, $v1
    sw $v1, 152($sp)
    lw $v1, 448($sp)
    lw $v0, 152($sp)
    add $v1, $v0, $v1
    sw $v1, 156($sp)
    lw $v1, 164($sp)
    move $v1, $v1
    sw $v1, 144($sp)
    lw $v1, 156($sp)
    lw $v0, 144($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 148($sp)
    lw $v1, 148($sp)
    lw $v0, 384($sp)
    add $v1, $v0, $v1
    sw $v1, 140($sp)
    lw $v1, 140($sp)
    move $v1, $v1
    sw $v1, 380($sp)
    lw $v0, 380($sp)
    lw $v1, 392($sp)
    sw $v1, 0($v0)
    lw $v1, 460($sp)
    lw $v0, 4($v1)
    sw $v0, 376($sp)
    li $v1, 4
    sw $v1, 136($sp)
    li $v1, 1
    sw $v1, 132($sp)
    lw $v1, 132($sp)
    move $v1, $v1
    sw $v1, 124($sp)
    lw $v1, 456($sp)
    lw $v0, 124($sp)
    add $v1, $v0, $v1
    sw $v1, 128($sp)
    lw $v1, 136($sp)
    move $v1, $v1
    sw $v1, 116($sp)
    lw $v1, 128($sp)
    lw $v0, 116($sp)
    mult $v0, $v1
    mflo $v1
    sw $v1, 120($sp)
    lw $v1, 120($sp)
    lw $v0, 376($sp)
    add $v1, $v0, $v1
    sw $v1, 112($sp)
    lw $v1, 112($sp)
    move $v1, $v1
    sw $v1, 372($sp)
    lw $v0, 372($sp)
    lw $v1, 452($sp)
    sw $v1, 0($v0)
    j L_ved6
L_ved5:
    li $v1, 0
    sw $v1, 108($sp)
    lw $v1, 108($sp)
    move $v1, $v1
    sw $v1, 368($sp)
    lw $v1, 368($sp)
L_ved6:
    li $v1, 1
    sw $v1, 104($sp)
    lw $v1, 104($sp)
    move $v1, $v1
    sw $v1, 364($sp)
    lw $v1, 364($sp)
    lw $v0, 456($sp)
    add $v1, $v0, $v1
    sw $v1, 100($sp)
    lw $v1, 100($sp)
    move $v1, $v1
    sw $v1, 360($sp)
    lw $v1, 360($sp)
    move $v1, $v1
    sw $v1, 456($sp)
    j L_ved3
L_ved4:
    li $v1, 1
    sw $v1, 96($sp)
    lw $v1, 96($sp)
    move $v1, $v1
    sw $v1, 356($sp)
    lw $v1, 356($sp)
    lw $v0, 464($sp)
    sub $v1, $v0, $v1
    sw $v1, 92($sp)
    lw $v1, 92($sp)
    move $v1, $v1
    sw $v1, 352($sp)
    lw $v1, 352($sp)
    move $v1, $v1
    sw $v1, 464($sp)
    j L_ved1
L_ved2:
    li $v1, 0
    sw $v1, 88($sp)
    lw $v1, 88($sp)
    move $v1, $v1
    sw $v1, 348($sp)
    lw $v1, 348($sp)
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
    .globl BBS_ved_Print
BBS_ved_Print:

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
L_ved7:
    lw $v1, 112($sp)
    lw $s3, 8($v1)
    li $t6, 1
    move $s4, $t6
    sub $t7, $s3, $s4
    move $s5, $t7
    lw $v0, 116($sp)
    sle $t8, $v0, $s5
    move $s6, $t8
    beqz $s6 L_ved8
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
    j L_ved7
L_ved8:
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
    .globl BBS_ved_Init
BBS_ved_Init:

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
L_ved9:
    li $t2, 1
    move $t1, $t2
    lw $v1, 468($sp)
    add $t0, $t1, $v1
    lw $v0, 472($sp)
    sne $s7, $v0, $t0
    beqz $s7 L_ved10
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
    j L_ved9
L_ved10:
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
