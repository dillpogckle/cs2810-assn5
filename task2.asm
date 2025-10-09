.data
prompt1: .asciiz "Enter a: "
prompt2: .asciiz "Enter b: "
prompt3: .asciiz "Enter c: "

plus: .asciiz " + "
minus: .asciiz " - "
equal: .asciiz " = "

.text
.globl main

main:
#getting a b and c
#print prompt
li $v0, 4
la $a0, prompt1
syscall
#get and store input
li $v0, 5
syscall
move $t0, $v0
#print prompt
li $v0, 4
la $a0, prompt2
syscall
#get and store input
li $v0, 5
syscall
move $t1, $v0
#print prompt
li $v0, 4
la $a0, prompt3
syscall
#get and store input
li $v0, 5
syscall
move $t2, $v0

#do calculation
sub $t3, $t0, $t1
add $t3, $t3, $t2

#print result
#a
li $v0, 1
move $a0, $t0
syscall
#minus
li $v0, 4
la $a0, minus
syscall
#b
li $v0, 1
move $a0, $t1
syscall
#plus
li $v0, 4
la $a0, plus
syscall
#c
li $v0, 1
move $a0, $t2
syscall
#equal
li $v0, 4
la $a0, equal
syscall
#result
li $v0, 1
move $a0, $t3
syscall

#exit
li $v0, 10
syscall

