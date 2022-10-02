=begin
Combining Arrays
Write a method that takes two Arrays as arguments, 
and returns an Array that contains all of the values from the argument Arrays. 
There should be no duplication of values in the returned Array, 
even if there are duplicates in the original Arrays.

PROBLEM
inputs: 2 arrays
ouputs: array
requirements: combine arrays, remove duplicates
quesitons: mutate?, always ints?

DATA
array [1, 2, 3] [3, 4, 5]
array [1, 2, 3, 3, 4, 5]
array [1, 2, 3, 4, 5]

ALGO
combine both arrays into single array
remove duplicates
return new array

PSEUDO
new_arr = []

new_arr = arr1 << ar2
new_arr = new_arr.uniq

new_arr
=end

require 'pry'

def merge(arr1, arr2)
  new_arr = (arr1 << arr2).flatten.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]