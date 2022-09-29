
# ASCII String Value
# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. 
# The ASCII string value is the sum of the ASCII values of every character in the string. 
# (You may use String#ord to determine the ASCII value of a character.)

=begin
PROBLEM
inputs: string
ouputs: int
requirements: output must be the sum of all ASCII values in string

DATA
string
array of chars
array of ints
int

ALGO
Given a string
Split the string into an array of chars
Convert each element to an int
sum the array of int
return the sum
=end

require 'pry'

def ascii_value(string)
  chars = string.split('')

  ints = chars.map { |char| char.ord }
binding.pry 
  ints.sum
end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0