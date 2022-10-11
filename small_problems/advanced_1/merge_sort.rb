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

def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

def merge_sort(array)
  return array if array.size == 1

  sub_array_1 = array[0...array.size / 2]
  sub_array_2 = array[array.size / 2...array.size]

  sub_array_1 = merge_sort(sub_array_1)
  sub_array_2 = merge_sort(sub_array_2)

  merge(sub_array_1, sub_array_2)
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]