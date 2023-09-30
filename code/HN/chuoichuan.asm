.data
nhap: .asciiz "nhap vao chuoi ky tu: "
xuat: .asciiz "chuoi ky tu xuat: "
str: .space 1024
.text

li $v0, 4
la $a0, nhap
syscall

li $v0, 8
la $a0, str
li $a1, 1024
syscall

la $t0, str
blt $t0, 'a', chuyenchuhoa
bgt $t0, 'a', chuyenchuhoa
lb $t1,($t0)
addi $t1, $t1, 1

chuthuong:
lb $t1,($t0)
beq $t1, 10, end
bne $t1, ' ', khoangtrang
blt $t1, 'a', chuyenchuhoa
bgt $t1, 'z', chuyenchuhoa
j chuyenchuthuong

khoangtrang:
addi $t0, $t0, 1
lb $t1, ($t0)
blt $t1, 'a', chuyenchuhoa
bgt $t1, 'z', chuyenchuhoa
addi $t0, $t0, 1
j chuthuong

chuyenchuthuong:
addi $t1, $t1, 32
sb $t1, ($t0)
addi $t0, $t0 ,1
j chuthuong

chuyenchuhoa:
lb $t1, ($t0)
subi $t1, $t1, 32
sb $t1,($t0)
addi $t0, $t0, 1
j chuthuong

end:

li $v0, 4
la $a0, str
syscall

li $v0, 10
syscall