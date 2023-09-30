.data
chuoi: .asciiz
nhap: .asciiz "nhap vao chuoi ky tu: "
xuat: .asciiz "\nxuat chuoi thuong: "
str: .space 1024
.text

li $v0, 4
la $a0, nhap
syscall

li $v0, 8
la $a0, str
li $a1, 1024
syscall

li $t2, 0
la $t0, str
loop_push:
lb $t1,($t0)
beqz $t1, exit
addi $sp, $sp, -1
sb $t1, ($sp)
addi $t0, $t0, 1
addi $t2, $t2,1
j loop_push
exit:
li $v0, 4
la $a0, xuat
syscall

loop_pop:
lb $t1, ($sp)
addi $sp, $sp, 1
addi $t2,$t2,-1
li $v0, 11
move $a0, $t1
syscall
bgtz $t2, loop_pop
li $v0, 10
syscall


