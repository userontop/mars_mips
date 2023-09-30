.data
nhap: .asciiz "nhap vao chuoi: "
xuat: .asciiz "xuat chuoi dao nguoc: "
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
loop:
lb $t1,($t0)
move $t1, $t2
addi $t1, $t1, -1
addi $t2, $t2, 1

beqz $t1, exit

j loop

exit:

li $v0, 4
la $a0, xuat
syscall

li $v0, 4
la $a0, ($t2)
syscall




