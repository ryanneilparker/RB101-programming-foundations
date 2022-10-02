=begin
Multiplicative Average
Write a method that takes an Array of integers as input, 
multiplies all the numbers together, 
divides the result by the number of entries in the Array, 
and then prints the result rounded to 3 decimal places. 
Assume the array is non-empty.

PROBLEM
inputs: integer array
outputs: float
requirements: find product of all ints, divide by array size, round to 3 decimal places
questions: mutate?, alwasys integers?, empty?, prints?

DATA
array: [1, 2, 3, 4]
int: 24
float: 6.000

ALGO
find product of all ints
divide ints by array size
round off average
print average

PSEUDO
product = 1

array.each { |int| product = product * int }

average = product / array.size.to_f

puts average.round!(3)
=end

require 'pry'

def show_multiplicative_average(array)
  product = 1

  array.each { |num| product = product * num }

  average = product / array.size.to_f

  puts "The result is #{format('%0.3f', average)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667