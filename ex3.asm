.text
 
 
 
.globl main
 
 
 
main:
 
    #Get K languages
 
    li $v0, 5
 
    syscall
 
    move $t0, $v0
 
    
 
    
 
    li $t6, 2
 
    li $t7, 100
 
    li $t8, 20
 
    mult $t8, $t0
 
    mflo $t8
 
    
 
    ble $t0, $t6, end
 
    bgt $t0, $t7, end
 
 
 
   la $t1, name
 
   
 
loop:
 
    beq $t0, $zero, exit
 
    
 
    li $v0, 8
 
    move $a0, $t1
 
    li $a1, 20
 
    syscall
 
    
 
    addi $t1, $t1, 20
 
    addi $t0, $t0, -1
 
    j loop
 
 
 
exit:
 
    la $t2, name
 
    la $t3, name
 
    addi $t3, $t3, 20
 
    
 
    li $t1, 0
 
    li $t6, 0
 
    li $t7, 1
 
loop_comp:
 
    lb $t4, 0($t2)
 
    lb $t5, 0($t3)
 
    beqz $t4, prox_idioma
 
    beqz $t5, prox_idioma
 
    bne $t4, $t5, UpperOrNe
 
continue:
 
    addi $t1, $t1, 1
 
    addi $t2, $t2, 1
 
    addi $t3, $t3, 1
 
    beq $t1, $t8, language
 
    j loop_comp
 
    
 
prox_idioma:
 
    addi $t2, $t2, 1
 
    addi $t3, $t3, 1
 
    beqz $t2, prox
 
    beqz $t3, prox
 
    j continue
 
    prox:
 
    j language
 
 
 
UpperOrNe:
 
    addi $t6, $t6, 1
 
    bgt $t6, $t7, english
 
    j continue  
 
    
 
english:
 
    la $a0, msg2
 
    li $v0, 4
 
    syscall
 
    la $a0, msg1
 
    li $v0, 4
 
    syscall
 
    j end
 
 
 
language:
 
    
 
    la $a0, msg2
 
    li $v0, 4
 
    syscall
 
    la $a0, name
 
    li $v0, 4
 
    syscall
 
 
 
end:
 
    li $v0, 10
 
    syscall
 
 
 
 
 
.data
 
name: .space 2000
 
msg1: .asciiz "ingles\n"
 
msg2: .asciiz "idioma:"