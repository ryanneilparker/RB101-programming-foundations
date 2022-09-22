=begin
Write a method that takes a String of digits, 
and returns the appropriate number as an integer. 
You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, 
nor should you worry about invalid characters; 
assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby to convert a string to a number, 
such as String#to_i, Integer(), etc. 
Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

PROBLEM
inputs: string of digits
outputs: integer
requirements: convert string of digits into an actual integer, without using String#to_i or Integer()
quesitons: return new or mutant original?, always strings? includes 0? only one number? decimals?

EXAMPLES
string_to_integer('4321') == 4321
string_to_integer('570') == 570

DATA
string
array
integer

ALGO
break up string into array of chars

convert char to correct integers:
  iterate though chars
    case char
    when '1' then 1
      etc
store each value in nums array

determine place values:
  iterate through nums
      multiple each num by 10 ** (nums.size - (1 + index))
mutate each value in nums

sum integers

return integer
=end

def string_to_integer(string)
  chars = string.chars

  nums = []

  chars.each do |char|
    nums << case char
    when '0'
      0
    when '1'
      1
    when '2'
      2
    when '3'
      3
    when '4'
      4
    when '5'
      5
    when '6'
      6
    when '7'
      7
    when '8'
      8
    when '9'
      9
    end
  end

  nums.each_with_index do |num, index|
    nums[index] = num * 10 ** (nums.size - (1 + index))
  end

  nums.sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
  