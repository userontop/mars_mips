# bai 3
.data
	nhap: .asciiz "Nhap so nguyen N: "
	so_chan: .asciiz "So vua nhap la so chan"
	So_le: .asciiz " So vua nhap la so le"
.text
	li $v0, 4
	la $a0, nhap
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $t2, 2
	div $t1, $t2
	
	mfhi $t3
	
	li $t4, 0
	beq $t3,$t4,In_So_Chan # cau truc re nhanh (if else) neu t3 = t4 chay in_so_chan
	
	li $v0, 4
	la $a0, So_le
	syscall
	
	li $v0,10
	syscall
	
	In_So_Chan:
		li $v0, 4
		la $a0, so_chan
		syscall
	
	