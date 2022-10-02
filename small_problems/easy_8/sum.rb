=begin
Sum of Sums
Write a method that takes an Array of numbers 
and then returns the sum of the sums 
of each leading subsequence for that Array. 
You may assume that the Array always contains at least one number.

PROBLEM
inputs: array
ouputs: int
requirements: return the sum of all cumulative sums
questions: mutate?

DATA
array: [1, 2, 3]
array: [[1], [1, 2], [1, 2, 3]]
array: [1, 3, 6]
int: 10

ALGO
create array of all cumulative combos
sum each sub array
sum all sums

PSEUDO
combos = []

nums.each_with_index do |_, index|
  combos << nums[0..index]
end

sums = combos.each(&:sum)

sum = sums.sum
=end

def sum_of_sums(nums)
  combos = []

  nums.each_with_index do |_, index|
    combos << nums[0..index]
  end

  combos.map(&:sum).sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35