.data 
nhap: .asciiz "nhap vao so nguyen: "
sohh: .asciiz " la so hoan hao"
kophai: .asciiz " khong la so hoan hao"
.text

li $v0, 4
la $a0, nhap
syscall

li $v0, 5
syscall
move $t2, $v0
addi $t1, $t2, -1

li $t0, 1
li $t3, 1
loop:
div $t1, $t0
mfhi $t4 #gan phan du cho S4
bne $t4, $zero, step
mflo $t5 #gan phan thuong cho $t5
mul $t3, $t3, $t5
mflo $t3
step:
addi $t0, $t0, 1
bne $t0, $t1, loop


beq $t3, $t2, sohoanhao

li $v0, 1 
move $a0, $t2
syscall

li $v0, 4
la $a0, kophai
syscall

li $v0, 10
syscall

sohoanhao:

li $v0, 1 
move $a0, $t2
syscall

li $v0, 4
la $a0, sohh
syscall