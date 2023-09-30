# bai 2
.data
	nhap1: .asciiz "Nhap so nguyen thu 1: "
	nhap2: .asciiz "Nhap so nguyen thu 2: "
	nguyen: .asciiz "phan nguyen: \n"
	du: .asciiz "Phan du: "
.text
	li $v0, 4
	la $a0, nhap1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, nhap2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0 
	
	div $t0,$t1
	
	mflo $t2 
	li $v0, 4
	la $a0, nguyen
	syscall
	
	li $v0, 1
	move $a0,$t2
	syscall
	
	mfhi $t3 
	li $v0, 4
	la $a0, du
	syscall
	
	li $v0, 1
	move $a0,$t3
	syscall
	
	 