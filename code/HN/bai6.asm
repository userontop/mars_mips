# bai 6
.data
	nhap1: .asciiz "Nhap so thu 1: "
	nhap2: .asciiz "Nhap so thu 2: "
	nhap3: .asciiz "Nhap so thu 3: "
	max: .asciiz "So lon nhat la: "
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
	
	li $v0, 4
	la $a0, nhap3
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0
	
	bgt $t0, $t1, ss0
	#slt $t3, $t0, $t1
	#bne $t3, $zero, ss2
	
	bgt $t1, $t2, s1
	#slt $t3, $t1, $t2
	#bne $t3, $zero, s2
	s2:
	li $v0, 4
	la $a0, max
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 10
	syscall



	
	ss0:
	
	bgt $t0, $t2, s0 #so sanh s1 > s2 = true nhay s0
	#slt $t3, $t0, $t2
	#bne $t3, $zero, s2
	j s2

	s1:
	li $v0, 4
	la $a0, max
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	li $v0, 10
	syscall
	
	s0:
	li $v0, 4
	la $a0, max
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	
 