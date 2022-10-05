=begin
Always Return Negative
Write a method that takes a number as an argument. 
If the argument is a positive number, 
return the negative of that number. 
If the number is 0 or negative, 
return the original number.

PROBLEM
inputs: int
outputs: int
requirements: convert sign according to rules

DATA
int: 5
boolean: true
int: -5

ALGO
check if number is +ve, multiply by -1 and return
check if number is 0 or -ve, return the number
=end

require 'pry'

def negative(int)
  if int <= 0
    int
  else
    -1 * int
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby