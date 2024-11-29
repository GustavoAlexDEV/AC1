.data
adress: .asciiz "t1.txt"
texto: .byte '0'
.text
.globl MAIN
MAIN:	
	li $v0,13
	la $a0,adress
	li $a1, 0
	li $a2, 0
	syscall
	
	add $a0,$zero,$v0
	li $v0,14
	la $a1,texto
	li $a2,1
	syscall
	
	
FOR:
	beqz $v0,ENDFOR
	addi $a1,$a1,1
	li $v0,14
	syscall
	j FOR
ENDFOR:
	li $v0,10
	syscall