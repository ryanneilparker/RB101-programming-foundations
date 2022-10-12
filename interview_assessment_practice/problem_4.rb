# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

=begin
PROBLEM
inputs: Array
outputs: Array
requirements: find pair of elements with smallest difference.
questions:

DATA
input array: [1, 4, 5]
output array: [5, 4]

ALGO
create minimum array and store indexes.
compare each element to every other element,
if the difference is smaller than the current smallest difference add to the minimum Array
return the pair corresponding to the minimum array.

PSEUDO
min_difference = 10 ** 20
n = array.size

for i in (0...n)
  for j in (i+1...n)
    min_difference = (array[i] - array[j]).abs if (array[i] - array[j]).abs < min_difference
  end
end

min_difference
=end

def closest_numbers(array)
  min_difference = [10 ** 20, nil, nil]
  n = array.size

  array.each_with_index do |element, index|
    array.each_with_index do |other_element, other_index|
      if (element - other_element).abs < min_difference[0] && index != other_index
        min_difference = [(element - other_element).abs, index, other_index]
      end
    end
  end

  [array[min_difference[1]], array[min_difference[2]]]
end

# Examples:
p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".
