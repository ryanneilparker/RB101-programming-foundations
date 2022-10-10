=begin
Rotation (Part 1)
Write a method that rotates an array 
by moving the first element to the end of the array. 
The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

PROBLEM
inputs: array
ouputs: array
requirements: move first el to to end of array, do not mutate
questions: empty arrays?, helper methods?, ouputs?

DATA
input array: [1, 2, 3]
ouput array: [2, 3, 1]

ALGO
duplicate array
shift first element off into a variable
append that variable to the end of the array
return output array

PSEUDO
input_array = array.dup
first_element = input_array.shift
ouput array = input_array.push(first_element)
=end

require 'pry'

def rotate_array(array)
  input_array = array.clone.map(&:clone)

  first_element = input_array.shift

  ouput_array = input_array.push(first_element)
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true