# Create a program that will take in positive number values until a negative number is entered.  When a negative value is entered, the program will print out the maximum value of the numbers entered.

# For example: 4, 6, 8, 10, 2, 5, 3, 7, -1

# Output:  The maximum value entered is: 10

.text
addi $t1, $zero, -1

While: 
li $v0, 5
syscall
move $t0, $v0
blt $t0, $zero, End
bgt $t0, $t1, Greater
j While

Greater:
move $t1, $t0
j While

End:
li $v0, 4
la $a0, biggest
syscall
li $v0, 1
move $a0, $t1
syscall
li $v0, 10
syscall

.data
biggest: .asciiz "The maximum value entered is: "
