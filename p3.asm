0
days0
hours0
minutes0
seconds
Sharif Judge
Laboratório 2
Dashboard
Notifications
Assignments
Problems
Submit
Final Submissions
All Submissions
Scoreboard
© Sharif Judge 1.4 Docs

Server Time: Oct 24 - 12:33:24

Collapse Menu
 Final Submissions  Excel
Final Submissions of Laboratório 2

Problem	Submit Time	Score	Language	Status	Code
Score	Delay
%	Final Score
1	2023-10-10 19:39:31	40	No Delay
100%	40	Spim	40	Code
2	2023-10-10 19:40:11	60	No Delay
100%	60	Spim	60	Code
main2b.asm | Submit ID: 153 | Username: 163911 | Problem: 2

select alltextpop-up
.text
    .globl  main
main:
    li $t3, 0
    li $t4, 0
    li $t5, 0
    li $t6, 0
    li $t7, 0
    li $t8, 0
 
ler:
    addi $t4, $t4, 1
    beq $t4, 6, end
 
continue:    
    li  $v0,5   
    syscall 
    move    $t0,$v0
    bgt $t0, 0, inc_pos
 
cont_pos:   
    blt $t0, 0, inc_neg
 
cont_neg:
    andi $t6, $t0, 1
    beq $t6, 0, inc_odd
 
cont_odd:    
    beq $t6, 1, inc_even
 
cont_even:   
    j ler   
 
inc_even:
    addi $t8, $t8, 1
    j cont_even
    
inc_odd:
    addi $t7, $t7, 1
    j cont_odd
    
inc_neg:
    addi $t3, $t3, 1
    j cont_neg
 
    
inc_pos:
    addi $t5, $t5, 1
    j cont_pos
 
    
end:
 
print_even:    
    li  $v0, 1   
    move $a0, $t7
    syscall
    
    li  $v0, 4
    la  $a0, msg_pares    
    syscall
    
    li  $v0, 4
    la  $a0, lf 
    syscall
 
print_odd:    
    li  $v0, 1   
    move    $a0, $t8
    syscall
    
    li  $v0, 4 
    la  $a0, msg_impares
    syscall
    
    li  $v0, 4
    la  $a0, lf 
    syscall
    
print_pos:    
    li  $v0, 1   
    move $a0, $t5
    syscall
    
    li  $v0, 4
    la  $a0, msg_pos
    syscall
    
    li  $v0, 4
    la  $a0, lf 
    syscall
    
print_neg:    
    li  $v0, 1   
    move $a0, $t3
    syscall
    
    li  $v0, 4
    la  $a0, msg_neg
    syscall
    
    li  $v0, 4
    la  $a0, lf 
    syscall
 
    li  $v0, 10      
    syscall
 
 
.data
msg_pares:    .asciiz " valor(es) par(es)"
msg_impares:   .asciiz " valor(es) impar(es)"
msg_pos:   .asciiz " valor(es) positivo(s)"
msg_neg:   .asciiz " valor(es) negativo(s)"
lf:     .asciiz "\n"
×