#bai10
.data
	nhap: .asciiz "nhap so N: "
	kq: .asciiz "ket qua: "
.text
	li $v0, 4
	la $a0, nhap
	syscall
	#nhap so nguyen N
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $t2, 1
	li $t3, 0
		loop:
			bgt $t2, $t1, exit
			add $t3, $t3, $t2
			addi $t2, $t2, 1
			j loop
		exit:
			li $v0, 4
			la $a0, kq
			syscall
			move $a0, $t3
			li $v0, 1
			syscall
			