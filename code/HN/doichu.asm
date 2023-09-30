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
li $a1, 1028
syscall

xor $t2, $t2, $t2
xor $t3, $t3, $t3
xor $t4, $t4, $t4
xor $t5, $t5, 1
la $t0, str

kituso:
lb $t1,($t0)
beq $t1, 10, end
blt $t1, '0', kituchuthuong
bgt $t1, '9', kituchuthuong
addi $t2, $t2, 1 #$t2  dem ky tu so
addi $t0, $t0, 1
j kituso

kituchuthuong:
blt $t1, 'a', kituchuhoa
bgt $t1, 'z', kituchuhoa
addi $t3, $t3, 1 #$t3 dem ki tu chu thuong
addi $t0, $t0, 1
j kituso

kituchuhoa:
blt $t1, 'A', sotutrongchuoi
bgt $t1, 'Z', sotutrongchuoi
addi $t4, $t4, 1
addi $t0, $t0, 1
j kituso

sotutrongchuoi:
bne $t1, ' ', sai
addi $t5, $t5, 1
sai:
addi $t0, $t0, 1
j kituso

end:

li $v0, 10
syscall



