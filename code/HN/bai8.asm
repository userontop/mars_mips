#bai 8
.data
	nhap1: .asciiz "nhap so nguyen N: "
	nhap2: .asciiz "nhap so nguyen M: " 
	xuat: .asciiz "ket qua: "
.text
	li $v0,4
	la $a0,nhap1
	syscall
	#nhap so nguyen N
	li $v0,5
	syscall
	move $t1,$v0
	
	li $v0,4
	la $a0,nhap2
	syscall
	#nhap so nguyen M
	li $v0,5
	syscall
	move $t2,$v0
	
	li $t3,2
	li $t4,5

	mult $t3,$t1
	mflo $t5
	mult $t4,$t2
	mflo $t6
	add $t7,$t5,$t6
	
	li $v0,4
	la $a0,xuat
	syscall
	move $a0,$t7
	li $v0,1
	syscall
	
	li $v0,10
	syscall
	
