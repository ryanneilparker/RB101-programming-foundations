=begin
Halvsies
Write a method that takes an Array as an argument, 
and returns two Arrays (as a pair of nested Arrays) 
that contain the first half and second half of the original Array, respectively. 
If the original array contains an odd number of elements, 
the middle element should be placed in the first half Array.

PROBLEM
inputs: array
outputs: nested array
requirements: split the array in half, put each half into its own array, return as nested arrays, middle goes in first half
questions: always ints?, mutate?, array order?

DATA
array [1, 2, 3, 4, 5]
array [1, 2, 3]
array [4, 5]
array [[1, 2, 3], [4, 5]]

ALGO
split array in half
add first half to new array
add second half to new array
nest arrays
return nested arrays

PSEUDO
array = [1, 2, 3, 4, 5]

if array.size.odd?
first_half = array[0..midpoint]
second_half = array[(midpoint + 1)..array.size]
else
  first_half = array[0...midpoint]
  second_half = array[midpoint..array.size]
end

[first_half, second_half]
=end

require 'pry'

def halvsies(array)
  midpoint = array.size / 2

  if array.size.odd?
    first_half = array[0..midpoint]
    second_half = array[(midpoint + 1)..array.size]
  else
    first_half = array[0...midpoint]
    second_half = array[midpoint..array.size]
  end

  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]