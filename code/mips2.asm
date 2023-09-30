.data
num: .word 10
nhap: .asciiz "nhap so nguyen"
txt: .asciiz "hello word"
cong: .asciiz "+"
tru: .asciiz "-"
chuoi: .asciiz
.text



li $v0, 8
la $a0, chuoi
li $a1, 30
syscall

la $t0, tru
la $t1, cong

li $v0, 4
la $a0, nhap
syscall

li $v0, 5
syscall

move $t3, $v0


bne $a0, $t1, tru







