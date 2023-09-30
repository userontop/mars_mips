# bai 5
.data
	nhap1: .asciiz " nhap so nguyen thu 1: "
	nhap2: .asciiz "\n nhap so nguyen thu 2: "
	nhap3: .asciiz "\n nhap so nguyen thu 3: "
	kq: .asciiz "\n tich cua 3 so: "
.text
	li $v0,4
	la $a0,nhap1
	syscall
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $v0,4
	la $a0,nhap2
	syscall
	li $v0, 5
	syscall
	move $t2, $v0
	
	li $v0,4
	la $a0,nhap3
	syscall
	li $v0, 5
	syscall
	move $t3, $v0
	
	mult $t1,$t2 # ket qua ghi vao thanh ghi low
	mflo $t4
	mult $t3,$t4
	mflo $t5
	
	li $v0, 4
	la $a0, kq
	syscall
	li $v0, 1
	move $a0,$t5
	syscall
	