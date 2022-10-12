# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

=begin
PROBLEM
inputs: Array
outputs: int, Nil
requirements: generate all sequences of 5 consecutive el, return smallest sum or nil
questions: negative? (yes), always int? (yes), mutate? (no), helper methods? (yes), loop? (no)

DATA
intput array: [1, 2, 3, 4, 5]
permutations array: [1, 2, 3, 4, 5]
sum int: 15
error nil: nil

ALGO
generate all 5 element consecutive permutations of array.
find the sum of the elements of each array.
compare sums and return smallest.
return nil if < 5 elements in array

PSEUDO
permutations = []
index = 0

return nil if array.size < 5

(array.size - 4).times do
  permutations << array[index..-1]
  index += 1
end

permutations.map { |array| array.sum }.min
=end

def minimum_sum(array)
  permutations = []
  index = 0

  return nil if array.size < 5

  (array.size - 4).times do
    permutations << array[index..(index + 4)]
    index += 1
  end

  permutations.map { |sub_array| sub_array.sum }.min
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".
