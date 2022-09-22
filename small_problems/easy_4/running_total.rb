# Write a method that takes an Array of numbers, 
# and returns an Array with the same number of elements, 
# and each element has the running total from the original Array.

=begin
PROBLEM
inputs: array of integers
outputs: array of integers
requirements: output array should contain a running total of input arrays numbers
questions: should mutate? return new or original? single method? always be integers?

EXAMPLES
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

DATA
array

ALGO
init output array
shift first value of input array into output array
append sum of shift of input array and last value of output array into output array
return output array
=end

require 'pry'

def running_total(arr)
  return [] if arr.empty?
  
  total = []

  total << arr.shift

  arr.each do |el|
    total << el + total.last
  end
  
  total
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
