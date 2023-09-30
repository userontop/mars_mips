.data

nhap: .asciiz "Nhap vao mot chuoi ho va ten: "

xuat: .asciiz "Xuat: "

str: .space 1024

line_brk: .asciiz "\n"

.text

main:

la $a0,nhap

li $v0,4

syscall



la $a0,str

li $a1,1024

li $v0,8

syscall



la $a0,line_brk

li $v0,4

syscall

#in hoa ki tu dau tien

la $t2,str

lb $t1,($t2)

addi $t1,$t1,-32

sb $t1,($t2)

addi $t2,$t2,1

loop:

lb $t1,($t2)

beqz $t1,exit

beq $t1,32,inhoa

addi $t2,$t2,1

j loop



inhoa:

addi $t2,$t2,1

lb $t1,($t2)

addi $t1,$t1,-32

sb $t1,($t2)

addi $t2,$t2,1

j loop



exit:

la $a0,xuat

li $v0,4

syscall



la $a0,str

li $v0,4

syscall



li $v0,10

syscall

