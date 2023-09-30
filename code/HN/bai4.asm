# bai 4
.data
	nhap: .asciiz "Nhap so nguyen: "
	chia_het: .asciiz "chia het cho 3"
	k_chia_het: .asciiz " khong chia het cho 3"
.text
	li $v0, 4
	la $a0, nhap
	syscall
	
	li $v0, 5
	syscall
	move $t1,$v0
	
	li $t2, 3
	div $t1,$t2
	
	mfhi $t4
	
	beqz $t4,het
	
	li $v0,4
	la $a0,k_chia_het
	syscall
	
	li $v0,10
	syscall
	
	het:
		li $v0, 1
		move $a0,$t1
		syscall
		li $v0, 4
		la $a0, chia_het
		syscall