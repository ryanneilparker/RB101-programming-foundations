# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. 
# Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

=begin
PROBLEM
inputs: +ve integer
outputs: string
requirements: can't use certain methods, must convert integer into string
questions: mutate original or return new?, always integer? decimals? only one number? output or return?

EXAMPLES
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

DATA
num hash {1: '1'}
input integer
break into num array
convert to string array
collaps into string

ALGO
create number hash
split integer into num array
save sign
convert nums into chars
collapse chars into string
=end

def integer_to_string(int)
  num_hash = {1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'}

  flag = 0
  if int < 0
    flag = 1
    int = int.abs
  end

  nums = int.digits.reverse

  nums.map! { |num| num_hash[num] }

  if nums.join == '0'
    string = nums.join
  elsif flag == 0
    string = '+' + nums.join
  else
    string = '-' + nums.join
  end
end

p integer_to_string(4321) == '+4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '+5000'
p integer_to_string(4321) == '+4321'
p integer_to_string(-123) == '-123'
p integer_to_string(0) == '0'
