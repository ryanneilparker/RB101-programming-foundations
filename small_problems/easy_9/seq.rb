=begin
Sequence Count
Create a method that takes two integers as arguments. 
The first argument is a count, 
and the second is the first number of a sequence 
that your method will create. 
The method should return an Array 
that contains the same number of elements as the count argument, 
while the values of each element 
will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, 
while the starting number can be any integer value. 
If the count is 0, 
an empty list should be returned.

PROBLEM
inputs: 2 ints
ouputs: array
requirements: return the first n terms of a geometric sequence given a ratio
questions: mutate?, ouput?

DATA
array conditions: [3, 1]
array sequence: [1, 2, 3]

ALGO
n times do
  add a new value to the array that is a * the previous element
end

PSEUDO
sequence = []

conditions[1].times do |n|
  sequences << n * conditions[0]
end

sequences
=end

require 'pry'

def sequence(terms, base)
  sequence = [base]

  (terms - 1).times do |n|
    sequence[n + 1] = (n + 2) * base
    #binding.pry
  end

  if sequence.size == 1 && sequence.first == 0
    []
  elsif terms == 0
    []
  else
    sequence
  end
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []