=begin
Reversed Arrays (Part 2)
Write a method that takes an Array, 
and returns a new Array 
with the elements of the original list in reverse order. 
Do not modify the original list.

You may not use Array#reverse or Array#reverse!, 
nor may you use the method you wrote in the previous exercise.

PROBLEM
inputs: object array
ouputs: new object array
requirements: reverse original array, don't mutate

DATA
array [1, 2, 3, 4]
array [4, 3, 2, 1]

ALGO
copy the original array
iterate through the array
  pop the last value of the array
  push it onto the new array
end

PSEUDO
array = list.dup
new_array = array.clone.map(&:clone)
counter = array.size

while counter > 0
  new_array.push(array.pop)

  counter -= 1
end

return new_array




=end

require 'pry'

def reverse(list)
  array = list.clone.map(&:clone)
  new_array = []
  counter = array.size

  while counter > 0
    new_array.push(array.pop)

    counter -= 1
  end

  new_array
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
