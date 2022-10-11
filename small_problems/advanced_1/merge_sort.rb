=begin
Merge Sorted Lists
Write a method that takes two sorted Arrays as arguments, 
and returns a new Array that contains all elements from both arguments in sorted order.

You may not provide any solution that requires you to sort the result array. 
You must build the result array one element at a time in the proper order.

Your solution should not mutate the input arrays.

PROBLEM
inputs: 2 sorted arrays
outputs: sorted array
requirements: combine the 2 sorted arrays into a single sorted output array without sorting the output array
questions: always int? (yes), mutate? (no), always same length? (no)

DATA
arr1 array: [1, 5, 7]
arr2 array: [2, 3, 7]
new array: [1, 2, 3, 5, 6, 7]

ALGO
create a new array

iterate through longest array,
compare first el of arr1 to arr2
add smallest one to new arr

return new arr

PSEUDO
new_arr = []
index = 0

loop do
  if arr1[index] < arr2[index]
    new_arr << arr1[index]
  else
    new_arr << arr2[index]
  end

  index += 1

  break if index > [arr1.size, arr2,size].max
end

new_arr
=end

require 'pry'

def merge(arr1, arr2)
  new_arr = []
  arr1_index = 0
  arr2_index = 0

  if arr1.empty? || arr2.empty?
    return (arr1 + arr2).flatten
  end

  loop do
    if arr2[arr2_index] == nil || arr1[arr1_index] < arr2[arr2_index]
      new_arr << arr1[arr1_index]
      arr1_index += 1
    elsif arr1[arr1_index] == nil || arr2[arr2_index] < arr1[arr1_index]
      new_arr << arr2[arr2_index]
      arr2_index += 1
    end

    break if arr1_index > [arr1.size, arr2.size].max || arr2_index > [arr1.size, arr2.size].max
  end

  new_arr.delete(nil)
  new_arr
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]