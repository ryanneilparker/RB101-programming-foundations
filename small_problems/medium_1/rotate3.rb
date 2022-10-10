=begin
Rotation (Part 3)
If you take a number like 735291, and rotate it to the left, you get 352917. 
If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. 
Keep the first 2 digits fixed in place and rotate again to 321759. 
Keep the first 3 digits fixed in place and rotate again to get 321597. 
Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. 
The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, 
and returns the maximum rotation of that argument. 
You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

PROBLEM
inputs: number
ouputs: number
requirements: ouput the maximum rotation of the input numbers digits, remove leading zeros
requirements: always int?, mutate?

DATA
number int: 12345
digits array: [1, 2, 3, 4, 5]
rotated array: [1, 5, 2, 4, 3]
new_number int: 15243

ALGO
split number into array of digits
rotate the last n digits length-2 times

join the rotated array back into number

PSEUDO
digits = number.digits.reverse

n = digits.size
m = n
(n-1).times do
  rotated_array = rotate_rightmost_digits(rotated_array, m)
  m -= 1
end

return rotated_array.join



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

def max_rotation(number)
  rotated_number = number
  n = number.digits.size

  number.digits.size.times do
    rotated_number = rotate_rightmost_digits(rotated_number, n)
    n -= 1
  end

  rotated_number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845