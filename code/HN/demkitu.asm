.data

input: .asciiz "Nhap vao mot chuoi: "
so: .asciiz "So ki tu so: "
chu: .asciiz "\nSo ki tu chu: "
khac: .asciiz "\nSo ki tu khac: "
str: .space 1024

.text


la $a0,input
li $v0,4

syscall

la $a0,str
li $a1,1024
li $v0,8
syscall


la $t1,str

kituso:

lb $t2,($t1)
beq $t2,10,end
blt $t2,'0',kituchuthuong
bgt $t2,'9',kituchuthuong
addi $t0,$t0,1
addi $t1,$t1,1
j kituso

kituchuthuong:

blt $t2,'a',kituchuhoa
bgt $t2,'z',kituchuhoa
addi $t3,$t3,1
addi $t1,$t1,1
j kituso

kituchuhoa:

blt $t2,'A',kitukhac
bgt $t2,'Z',kitukhac
addi $t5,$t5,1
addi $t1,$t1,1
j kituso

kitukhac:

addi $t4,$t4,1
addi $t1,$t1,1
j kituso

end:

la $a0,so
li $v0,4
syscall

li $v0,1
move $a0,$t0
syscall

la $a0,chu
li $v0,4

syscall
li $v0,1
move $a0,$t3
syscall

la $a0,khac
li $v0,4
syscall

li $v0,1
move $a0,$t4
syscall

li $v0,10
syscall