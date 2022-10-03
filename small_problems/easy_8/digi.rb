=begin
Reverse the Digits In a Number
Write a method that takes a positive integer as an argument 
and returns that number with its digits reversed.

PROBLEM
inputs: int
ouputs: int
requirements: reverse the digits of the number, ignore leading zeros
questions: mutate?, always int?, helper methods?

DATA
int: 123
array: [1, 2, 3]
array: [3, 2, 1]
string: '321'
int: 321

ALGO
split number up into digits
revsere the order of the array of digits
join into a string
convert string into an int

PSEUDO
digits = num.digits.reverse
new_num = digits.join.to_i
=end

require 'pry'

def reversed_number(num)
  digits = num.digits.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1