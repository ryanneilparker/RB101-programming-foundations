=begin
Alphabetical Numbers
Write a method that takes an Array of Integers between 0 and 19, 
and returns an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

PROBLEM
inputs: array of integers
ouputs: sorted arrray
requirements: elements must be sorted alphabetically according to name
questions: mutate?, always 0..19?

DATA
array [1, 2, 3, ...]
array ['one', 'two', 'three', ...]
hash {1 => 'one', 2 => 'two', 3 => 'three', ...}

ALGO
init hash
convert array_int to array_names
sort array_names
convert array_names back to array_int

PSUEDO
hash = {1 => 'one', 2 => 'two', 3 => 'three', ...}
array_int = [1, 2, 3, ...]

array_names = array_int.map { |num| hash[num] }
array_names.sort!

array_int = array_names.map { |name| hash.key(name) }
return array_int
=end

require 'pry'

NUMS = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
NAMES = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
NUMS_NAMES = NUMS.zip(NAMES).to_h

def alphabetic_number_sort(array_nums)
  array_names = array_nums.map {|int| NUMS_NAMES[int]}
  array_names.sort!

  array_nums = array_names.map { |name| NUMS_NAMES.key(name) }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]