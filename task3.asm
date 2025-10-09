.data
a: .word 4
b: .word 7
c: .word 10
d: .word 7
sum: .space 4
average: .space 4

.text
.globl main

main:
# load values into registers
lw $t0, a
lw $t1, b
lw $t2, c
lw $t3, d

#add values and average
add $t4, $t0, $t1
add $t4, $t4, $t2
add $t4, $t4, $t3
div $t5, $t4, 4

#store results to memory
sw $t4, sum
sw $t5, average

#exit
li $v0, 10
syscall