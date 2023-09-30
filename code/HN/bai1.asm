#bai 1
.data 
	nhap1: .asciiz "Nhap so nguyen thu 1: "
	nhap2: .asciiz "Nhap so nguyen thu 2: "
	xuat: .asciiz "ket qua: "
.text
	li $v0, 4
	la $a0, nhap1
	syscall
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $v0, 4
	la $a0, nhap2
	syscall
	li $v0, 5
	syscall
	move $t2, $v0
	
	add $t3,$t1,$t2
	
	li $v0, 4
	la $a0, xuat
	syscall
	
	li $v0,1
	move $a0,$t3
	syscall
	 
	
	