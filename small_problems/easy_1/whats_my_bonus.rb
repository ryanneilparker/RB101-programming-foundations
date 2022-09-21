=begin
Write a method that takes two arguments, 
a positive integer and a boolean, 
and calculates the bonus for a given salary. 
If the boolean is true, 
the bonus should be half of the salary. 
If the boolean is false, 
the bonus should be 0.
=end

=begin
PROBLEM
inputs: +ve int, boolean
ouput: int

EXAMPLES
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

DATA
NA

ALGO
if boolean true
  bonus = salary / 2
else
  bonus = 0
end

return bonus
=end

def calculate_bonus(salary, flag)
  bonus = 0  
  
  bonus = salary / 2 if flag == true

  bonus
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000