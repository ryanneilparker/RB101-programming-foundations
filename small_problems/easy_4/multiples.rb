# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, 
# and then computes the sum of those multiples. 
# For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

=begin
PROBLEM
inputs: integer > 1
outputs: integer
requirements: find all the multiples of 3 and 5 and add them up

EXAMPLES
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

DATA
array of range between 1 and num
array of multiples
integer sum of multiples

ALGO
generate a range of numbers between 1 and num and store in array
select the multiples of 3 and 5
sum the multiples
return sum
=end

def multisum(int)
  multiples = (1..int).to_a.select { |num| num % 3 == 0 || num % 5 == 0}
  multiples.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
