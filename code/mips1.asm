.data
msg_input1: .asciiz "nhap vao so nguyen thu nhat : "
msg_input2: .asciiz "nhap vao so nguyen thu hai: "
msg_output: .asciiz "\n xuat: "
msg_output1: .asciiz " bang "
msg_output2: .asciiz " khong bang "
msg_output3: .asciiz " < "
msg_output4: .asciiz " > "
msg_output5: .asciiz " <= "
msg_output6: .asciiz "\nS3 = "
.globl main
.text
main: 

li $v0, 4
la $a0, msg_input1
syscall

li $v0, 5
syscall

move $t0, $v0

li $v0, 4
la $a1, msg_input2
syscall

li $v0, 5
syscall

move $t1, $v0

li $v0, 4
la $a0, msg_output
syscall


bne $t0, $t1, kobang
li $v0, 1
move $a0, $t0
syscall

li $v0, 4
la $a0, msg_output1
syscall

li $v0, 1
move $a0, $t1
syscall

kobang:
beq $t1, $t0, behon
li $v0, 1
move $a0, $t0
syscall

li $v0, 4
la $a0, msg_output2
syscall

li $v0, 1
move $a0, $t1
syscall


behon:
li $v0, 4
la $a0, msg_output
syscall


slt $t2, $t0, $t1
bne $t2, 1, lable
li $v0, 1
move $a0, $t0
syscall

li $v0, 4
la $a0, msg_output3
syscall

li $v0, 1
move $a0, $t1
syscall


lable:


slt $t2, $t0, $t1
bne $t2, 0, bb
li $v0, 1
move $a0, $t1
syscall

li $v0, 4
la $a0, msg_output4
syscall

li $v0, 1
move $a0, $t1
syscall



bb:

slt $t2, $t0, $zero
bne $t2, 0, line2

addi $t3, $zero, 1
j exit1

line2:
slt $t2, $t1, $zero
bne $t2, 0, exit1
move $t3, $zero


exit1:
li $v0, 4
la $a0, msg_output6
syscall

li $v0, 1
move $a0, $t3
syscall
