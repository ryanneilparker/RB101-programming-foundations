=begin
Multiply Lists
Write a method that takes two Array arguments 
in which each Array contains a list of numbers, 
and returns a new Array that contains the product of each pair of numbers 
from the arguments that have the same index. 
You may assume that the arguments contain the same number of elements.

PROBLEM
inputs: 2 arrays
outputs: array
requirements: pairwise multiplication of arrays
questions: always ints?

DATA
array: [1, 2, 3]
array: [4, 5, 6]
array: [4, 10, 18]

ALGO
loop thru arrays
multiply each element together
and add to new array

PSEUDO
new_array = []

arr1.each_with_index |el, index|
  new_array << el * arr2[index]
end

new_array
=end

require 'pry'

def multiply_list(arr1, arr2)
  new_arr = []

  arr1.each_with_index do |el, i|
    new_arr << el * arr2[i]
  end

  new_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]