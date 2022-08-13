=begin
string calculator:

outside world interation:
- create a calculator
- pass in a string 'equation' to a function
- that function should return the answer to the equation

inside the calculator:
- function called from the outside: 'calculate'
    - take one parameter (a string) that is the equation: 'the_string'

with the string:
- find the different parts we care about
    - find the numbers
    - find the operators
        - .include? to see if there's +/-/* etc
    - deal with/ignore spaces and other characters
    - ways to do this:
        - find numbers/operators based on position in array/string
        - .split on spaces to break up the string into array
        - .partition on operators to break string and keep operators
        - in english... find a number at the beginning, store it in
          var1, find an operator, store it in op1, next number in var2
- do the math operations and return the answer
    - have a left_number, operator, and right_number
    - decide which math based on the operator
        - if, elsif, etc...
        - public_send

This works for 2+2, but not for:
- more than 2 operands or order of operations
- negative numbers

OPERATION COUNT PLAN
2+2
- ops: 1
- array length: 3

2+2+2
- ops: 2
- array length: 5

2+2+4+4
- ops: 3
- array length: 7

integer division gives me the number of times I have to do operations
    - 3 / 1 = 1 ... 5 / 2 = 2 ... 7 / 2 = 3
    - loop number of ops times, do addition with the right places

SPLIT LOOP PLAN
2+2+4+4
4+4+4
8+4
12

loop while there are more than 2 things in my array
    - add the first two together
    - remove the first two things
    - put the answer at the beginning
=end