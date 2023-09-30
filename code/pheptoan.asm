.data
chuoi: .asciiz #khai bao chuoi
row: .asciiz "\n"
.text
	li $t1, 10 #gan t1 = 10
	li $t2, 2 #gan t2 = 2\
	#addi $t2, 2
	#phep +
	add $t3, $t1, $t2
	#phep -
	sub $t0, $t1, $t2
	#phep *
	mul $t4, $t1, $t2
	#phep /
	div $t1, $t2
	mfhi $t5 #phan du 
	mflo $t6 #phan thuong
	#nhap so nguuyen
	li $v0, 5 
	#addi $v0, $zero, 5
	#nhap vao thanh ghi $v0
	syscall
	move $t1, $v0 #gan $v0 cho $t1
	#xuat so nguyen
	li $v0, 1
	move $a0, $t1
	syscall
	#xuong dong
	li $v0, 4
	la $a0, row
	syscall
	#nhap chuoi
	li $v0, 8
	la $a0, chuoi #gan chuoi vao thanh ghi a0
	li $a1, 30 #quy dinh so luong ki tu toi da duoc nhap <30 (toi da 29)
	syscall
	#xuat chuoi
	li $v0, 4
	la $a0, chuoi 
	syscall
	#ss be hon
	slt $t7, $t1, $t2 #ss lon hon neu S1 > S2 thi gan gia  tri S7 = 0 nguoc lai = 1
	bne $t7, 1 , exit #kiem tra S7 khong bang 1 thi thoat
	
	#ss lon hon
	slt $t7, $t1, $t2 #do S1 > S2 neu S7 = 0
	bne $t7, 0, exit #kiem tra S7 co = 0
	
	#ss bang
	beq $t1, $t2, bang #nhay dieu kien khi bang
	
	#ss khong bang
	bne $t1, $t2, khongbang #nhay dieu kien khi khong bang
	
	bang:
	khongbang:
	
	
	
	
	
	exit:
