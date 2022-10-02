=begin
Reversed Arrays (Part 1)

Write a method that takes an Array as an argument, 
and reverses its elements in place; 
that is, mutate the Array passed into this method. 
The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.

PROBLEM
inputs: array of objects
ouputs: same array but reversed
requirements: reverse array, mutate original, same types, do not use Array#reverse methods
questions: none

DATA
array [1, 2, 3]
array [3, 2, 1]

ALGO
while not the last term
  swop outer terms
  
  return reversed array

PSEUDO
counter = 0

while counter < array.size
  array.push(array.pop)

=end

require 'pry'

def reverse!(list)
  counter = 1

  while counter <= list.size / 2
    list[counter - 1], list[-1 * counter] = list[-1 * counter], list[counter - 1]
    
    counter += 1
  end

  list
end


p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

p list = []
p reverse!(list) == [] # true
p list == [] # true