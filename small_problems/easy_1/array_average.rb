=begin
Write a method that takes one argument, 
an array containing integers, 
and returns the average of all numbers in the array. 
The array will never be empty 
and the numbers will always be positive integers. 
Your result should also be an integer.
=end

=begin
# problem
  input: non-empty array of +ve ints
  output: int (average of inputs)

# data
  array -> int

# algo
  sum contents of array
  divide by array.size
  convert to integer
  return average
=end

def average(arr)
  avg = arr.sum.to_f / arr.size
  avg
end




# Tests
puts average([1, 6]) == 3.5 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40