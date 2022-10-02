=begin
Combine Two Lists
Write a method that combines two Arrays passed in as arguments, 
and returns a new Array that contains all elements from both Array arguments, 
with the elements taken in alternation.

You may assume that both input Arrays are non-empty, 
and that they have the same number of elements.

PROBLEM
inputs: 2 arrays
ouputs: array
requirements: interleave array elements into single array, first el comes from first arr
questions: mutate?

DATA
array: [1, 2, 3]
array: [3, 2, 1]
array: [1, 3, 2, 2, 3, 1]

ALGO
init new arr
add first el of first array
add first el of second array
repeat

PSEUDO
new_array = []
counter = 0

while counter < arr1.size
  new_array << arr1[counter] + arr2[counter]
  counter += 1
end

new_array
=end

def interleave(arr1, arr2)
  new_array = []
  index = 0

  while index < arr1.size
    new_array << arr1[index] << arr2[index]
    index += 1
  end

  new_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']