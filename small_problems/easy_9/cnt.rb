=begin
Counting Up
Write a method that takes an integer argument, 
and returns an Array of all integers, 
in sequence, 
between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

PROBLEM
inputs: int
outputs: array
requirements: return array of all ints between 1 and int

DATA
int: 3
array: [1, 2, 3]

ALGO
i = 1
while number < int
  array[i - 1] = i
  number += 1
end

=end

require 'pry'

def sequence(int)
  number = 1
  sequence = []

  while number <= int
    sequence[number - 1] = number
    number += 1
  end

  sequence
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]