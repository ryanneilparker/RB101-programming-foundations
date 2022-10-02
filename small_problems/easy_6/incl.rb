=begin
Does My List Include This?
Write a method named include? 
that takes an Array and a search value as arguments. 
This method should return true if the search value is in the array, 
false if it is not. 
You may not use the Array#include? method in your solution.

PROBLEM
inputs: array, obj
outputs: boolean
requirements: return true if obj is included in array
quesitons: always int?, case sensitive?

DATA
array: [1, 2, 3]
obj: 2
boolean: true

ALGO
iterate thru array
  return true if current element matches obj

PSEUDO
if array.select { |el| el == obj} == []
  return false
else
  return true
end

=end

def include?(array, obj)
  if array.select { |element| element == obj } == []
    false
  else
    true
  end
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false