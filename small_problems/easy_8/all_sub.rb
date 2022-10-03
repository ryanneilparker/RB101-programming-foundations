=begin
All Substrings
Write a method that returns a list of all substrings of a string. 
The returned list should be ordered by where in the string the substring begins. 
This means that all substrings that start at position 0 should come first, 
then all substrings that start at position 1, and so on. 
Since multiple substrings will occur at each position, 
the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:

PROBLEM
inputs: string
outputs: array of strings
requirements: find all substrings and organize by start location first and then length
questions: mutate?

DATA
string: 'abcde'
array: ['a', 'b', 'c', 'd', 'e']
array: [...]

ALGO
iterate staring position
  iterate ending postitions
    slice string
    add to array
end
end

PSEUDO
sub_strings = []

start = 0
ending = 0

while start < string.chars.size
  while end < string.chars.size
    sub_strings << string[start..ending]
    ending += 1
  end
  start += 1
end
=end

require 'pry'

def substrings(string)
  sub_strings = []

  start = 0
  while start < string.chars.size
    stop = start
    while stop < string.chars.size
      sub_strings << string[start..stop]
      #binding.pry
      stop += 1
    end
    start += 1
  end

  sub_strings
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]