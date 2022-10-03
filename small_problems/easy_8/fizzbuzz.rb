=begin
fizzbuzz
Write a method that takes two arguments: 
the first is the starting number, 
and the second is the ending number. 
Print out all numbers between the two numbers, 
except if a number is divisible by 3, print "Fizz", 
if a number is divisible by 5, print "Buzz", 
and finally if a number is divisible by 3 and 5, print "FizzBuzz".

PROBLEM
inputs: 2 ints
ouputs: print
requirements: print all numbers between ints, replace with words for certain conditions
questions: floats?, helper methods?

DATA
int: 1
int: 5
array: [1, 2, 3, 4, 5]
array: [1, 2, 'Fizz', 4, 'Buzz']

ALGO
create array of all nums between ints
loop thru array
  replace all numbers div by 3 and 5 with fizzbuzz
  replace all numbers only div by 3 with fizz
  replace all numbers ony div by 5 with buzz
end

loop thru array
  puts each element
end

PSEUDO
nums = (start..stop)

nums.each do |num|
  if num % 3 == 0 && num % 5 == 0
    num = 'FizzBuzz'
  elsif num % 3
    num = 'Fizz'
  elsif num % 5
    num = 'Buzz'
  else
    num = num
  end
end

nums.each do |el|
  puts el
end
=end

require 'pry'

def fizzbuzz(start, stop)
  nums = (start..stop).to_a
  
  nums.each_with_index do |num, index|
    if num % 3 == 0 && num % 5 == 0
      nums[index] = 'FizzBuzz'
    elsif num % 3 == 0
      nums[index] = 'Fizz'
    elsif num % 5 == 0
      nums[index] = 'Buzz'
    end
  end

  nums.each do |el|
    puts el
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz