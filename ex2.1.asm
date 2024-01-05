.text
    contadorLoop: .word 0
    interacoesLoop: .word 6
    contadorPositivo: .word 0
 
.globl main
 
main:
    lw $t0, contadorLoop
    lw $t1, interacoesLoop
    lw $t2, contadorPositivo
  
    loop:
      beq $t0, $t1, end
      addi $t0, 1 
    
      li $v0, 5 
      syscall
      move $t3, $v0
    
      bgt $t3, $zero, positivoC 
    
      j loop
 
 
    positivoC:
    addi $t2, 1
    j loop
 
 
 
end:
   li $v0, 1
    move $a0, $t2
    syscall
 
    li $v0, 4
    la $a0, msg_final
    syscall
 
.data
    msg_final: .asciiz " valores positivos"