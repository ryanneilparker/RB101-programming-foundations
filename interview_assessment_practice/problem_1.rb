# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

=begin
PROBLEM
inputs: array
outputs: array
requirements: determine count of unique values smaller than each element in array.
questions: count serlf? (no), mutate? (no), helper methods? (yes), negative numbers? (no)

DATA
input array: [1, 2, 3]
current int: 1
remaining array: [2, 3]
count int: 0
output array: [0, 1, 2]

ALGO
duplicate array.
extract current value.
compare to remaining unique values,
if larger add 1 to count.

PSEUDO
output = []

array.each_with_index do |element, index|
  array.uniq.each do |other_element|
    if other_element < element
      ouput[index] += 1
    end
  end
end

=end

require 'pry'

def smaller_numbers_than_current(array)
  output = Array.new(array.size, 0)

  array.each_with_index do |element, index|
    array.uniq.each do |other_element|
      if other_element < element
        output[index] += 1
      end
    end
  end

  output
end

# Examples:
p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".