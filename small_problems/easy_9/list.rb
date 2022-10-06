# Grocery List
# Write a method which takes a grocery list (array) of fruits with quantities 
# and converts it into an array of the correct number of each fruit.

=begin
Problem
inputs: nested arrays
ouputs: array
requirements: convert nested array into array, multiply the fruit by the quantity
questions: mutate?, check for fruit?, what if huge amount of fruit?

DATA
list array: [['a', 1], ['b', 2]]
fruits array: ['a', 'b', 'b']

ALGO
loop throught list
for every sub arr
  multiply fruit by quantitiy
  append this to the new array
end

PSEUDO
new_list = []

list.each do |fruit|
  fruit[1].times do
    new_list << fruit[0]
  end
end

new_list
=end

require 'pry'

def buy_fruit(list)
  new_list = []

  list.each do |fruit|
    fruit[1].times do
      new_list << fruit[0]
    end
  end

  new_list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]