.data
a: .word 4
b: .word 7
c: .word 10
result: .word 0

.text
.globl main

main:
# load variables into registers
lw $t0, a
lw $t1, b
lw $t2, c

# do addition
add $t3, $t0, $t1
add $t3, $t3, $t2

#store result
sw $t3, result

#print result and newline
li $v0, 1
move $a0, $t3
syscall
li $v0, 11
li $a0, 10
syscall
 