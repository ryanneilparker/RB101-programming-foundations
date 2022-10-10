=begin
Rotation (Part 2)
Write a method that can rotate the last n digits of a number. 

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

PROBLEM
inputs: number, int
ouputs: number
requirements: rotate the last n digits of a number
questions: floats?, mutate?, helper methods?

DATA
number int: 12345
n int: 3
digits array: [1, 2, 3, 4, 5]
last_n array: [3, 4, 5]
new array: [1, 2, 5, 4, 3]
new_number int: 12543

ALGO
split number into digits array
isolate the last n digits
rotate the isolated array
join the arrays back together
collaps back into an integer
return new integer

PSEUDO
digits = number.digits
last_n = digits[-n..-1]
new_digits = digits[0...-n] + rotate_array(last_n)
new_number = new_digits.join

=end

require 'pry'

def rotate_array(array)
  array[1..-1] << array[0]
end

def rotate_rightmost_digits(number, n)
  digits = number.digits.reverse

  last_n = digits[-n..-1]

  new_digits = digits[0...-n].concat(rotate_array(last_n))

  new_digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917