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