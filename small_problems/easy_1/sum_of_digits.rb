# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

=begin
PROBLEM
inputs: +ve int
outputs: +ve int

TESTS
sum(23) == 5
sum(496) == 19
sum(123_456_789) == 45

DATA
int -> string -> array -> int

ALGO
split int into individual elements
store the elements in an array
sum the elements of the array
return the sum
=end

def sum(int)
  digits = int.to_s.chars
  digits.map! { |num| num.to_i }
  digits.sum
end

p sum(23) == 5
p sum(496) == 19
p sum(123_456_789) == 45