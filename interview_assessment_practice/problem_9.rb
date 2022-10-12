=begin
Write a mehod to find the maximum sum of a consecutive series of elements
in an array.

If the array is all positive numbers simply return the sum of the array.
If the array is all negative numbers or empty simply return 0.

PROBLEMS
inputs: Array
outpus: int, 0
requirements: return the max sum of consecutive sub array or 0
questions: ints? (yes)

ALGO
check if all +ve or all -ve or empty
create array of all sub arrays
sum each sub Array
return the sub array with the greatest sum

DATA
inputs array: [1, 2, -3]
subarrays array: [[1, 2], [2, -3]]
sum array: [3, -1]
retrun sum.max
=end

def sub_arrays(array)
  sub_arrays = []

  start_index = 0
  stop_index = 0

  loop do 
    stop_index = start_index
    loop do 
      sub_arrays << array[start_index..stop_index]
      stop_index += 1
      break if stop_index >= array.size
    end
    start_index += 1
    break if start_index >= array.size
  end

  sub_arrays
end

    

def max_sequence(array)
  return array.sum if array.all? { |int| int >= 0 }

  return 0 if array.all? { |int| int < 0 }

  return 0 if array.empty?

  max = sub_arrays(array).map { |sub_array| sub_array.sum }.max
end

# Examples
p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
