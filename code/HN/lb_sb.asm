.data
str: .space 1024
chuoi: .asciiz "chuoi"
.text

j load_byte
store_byte:
li $t1, 'a'
#bieu dien theo ma Ascii
# sb gia_tri, offset(address) = offser + address
li $t2, 268500992
sb $t1, ($t2)

load_byte:

li $t1, 2
li $t2, 3

blt $t1, $t2, behon # $t1 > $t2
li $t0, 0
behon:
li $t3, 1


