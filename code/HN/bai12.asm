# bai 12
.data
	nhap: .asciiz "nhap n: "
	kq1: .asciiz " la so nguyen to "
	kq2: .asciiz " khong phai so nguyen to "
.text
	li $v0, 4
	la $a0, nhap
	syscall
	li $v0, 5
	syscall
	move $t1, $v0
	
	blez $t1, k_nguyento
	
	li $t2, 2
	div $t1, $t2
	mflo $t3
	
	loop:
		bgt $t2, $t3, nguyento
		div $t1, $t2
		mfhi $t4
		beqz $t4, k_nguyento
		addi $t2, $t2, 1
		j loop
	nguyento:
		move $a0, $t1
		li $v0, 1
		syscall
		li $v0, 4
		la $a0, kq1
		syscall
		
	li $v0, 10
	syscall
	
	 k_nguyento:
	 	move $a0, $t1
	 	li $v0, 1
	 	syscall
	 	li $v0, 4
	 	la $a0, kq2
	 	syscall 
