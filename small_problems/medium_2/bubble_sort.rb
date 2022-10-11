=begin
Bubble Sort
Bubble Sort is one of the simplest sorting algorithms available. 
It isn't an efficient algorithm, but it's a great exercise for student developers. 
In this exercise, you will write a method that does a bubble sort of an Array.

A bubble sort works by making multiple passes (iterations) through the Array. 
On each pass, each pair of consecutive elements is compared. 
If the first of the two elements is greater than the second, then the two elements are swapped. 
This process is repeated until a complete pass is made without performing any swaps; 
at that point, the Array is completely sorted.

Write a method that takes an Array as an argument, 
and sorts that Array using the bubble sort algorithm as just described. 
Note that your sort will be "in-place"; 
that is, you will mutate the Array passed as an argument. 
You may assume that the Array contains at least 2 elements.

PROBLEM
inputs: array
outputs: array
requirements: sort the array using bubble sort algorithm
questions: string arrays? (yes), non-comparable arrays? (no), empty array? (no), mutate? (yes)

DATA
input array: [4, 3, 2, 1]
output array: [1, 2, 3, 4]

ALGO
loop over array until sorted,
compare each pair of elements,
if unordered,
swap.

PSEUDO
n = arr.size

while swapped
  swapped = false

  for i in (1..n-1)
    if arr[i-1] > arr[i]
      arr[i-1], arr[i] = arr[i], arr[i-1]
      swapped = true
    end
  end
end

arr
=end

require 'pry'

def bubble_sort!(arr)
  n = arr.size
  swapped = true

  while swapped
    swapped = false

    for i in (1..n-1)
      if arr[i - 1] > arr[i]
        arr[i - 1], arr[i] = arr[i], arr[i - 1]
        swapped = true
      end
    end
  end

  arr
end

array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)