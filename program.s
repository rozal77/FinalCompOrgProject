    # Computer Organization Project
    # Rojal Sapkota
    # Fall 2023
    # Email: rojal.sapkota@bison.howard.edu
    # Student ID : @03086974

.data   
input_message:      .asciiz "Enter an integer: "
illegal_message:    .asciiz "Illegal Number!\n"
newline:            .asciiz "\n"

.text   
main:               
    li      $v0,    4
    la      $a0,    input_message
    syscall                                             # displays the input_message on the screen

    li      $v0,    5                                   # takes the input from the user
    syscall 
    move    $t0,    $v0                                 # Moves value from $v0 to $t0
# loop to get legal number from the user
loop1:              

    # branch creation for when the number is greater than 24
    bgt     $t0,    24,                 find_fibonacci  # find_fibonacci is called if the number is greater than 24

    li      $v0,    4
    la      $a0,    illegal_message                     # Prints the string in illegal_message when the number is illegal
    syscall 