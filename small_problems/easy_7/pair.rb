=begin
Write a method that takes two Array arguments 
in which each Array contains a list of numbers, 
and returns a new Array that contains the product of every pair of numbers 
that can be formed between the elements of the two Arrays. 
The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

PROBLEM
inputs: 2 arrays
ouputs: array
requirements: find the product of every pairwise combination of 2 elements from the arrays
qusetions: ints? 

DATA
array: [1, 2]
array: [4, 5]
array: [[1, 4], [1, 5], [2, 4], [2, 5]]
array: [4, 5, 8, 10]

ALGO
Generate all possible combinations between arrays
find the product of each combination
return new array

PSEUDO
combos = []

arr1.each do |el1|
  arr2.each do |el2|
    combos << [el1, el2]
  end
end

products = combos.map { |combo| combo[0] * combo[1] }


=end

def multiply_all_pairs(arr1, arr2)
  combos = []

  arr1.each do |el1|
    arr2.each do |el2|
      combos << [el1, el2]
    end
  end
  
  
  combos.map { |combo| combo[0] * combo[1] }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]