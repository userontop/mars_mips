.data
nhap: .asciiz "nhap vao so nguyen: "
chiahet5va7: .asciiz " chia het cho 5 va 7"
kochiahet5va7: .asciiz "khong chia het cho 5 va 7"
.text

li $t1, 5
li $t2, 7

li $v0, 4
la $a0, nhap
syscall

li $v0, 5
syscall
move $t0, $v0

div $t0, $t1 #chia 5
mfhi $t3 #phan du

div $t0, $t2 # chia 7
mfhi $t4 #phan du

beq $t3, $zero, chiahet5 #ss bang
j khongchiahet

chiahet5:
beq $t4, $zero, chiahet
j khongchiahet

chiahet:
li $v0, 1
move $a0, $t0
syscall

li $v0, 4
la $a0, chiahet5va7
syscall

li $v0, 10 #thoat
syscall
khongchiahet:
li $v0, 1
move $a0, $t0
syscall

li $v0, 4
la $a0, kochiahet5va7
syscall
