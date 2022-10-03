=begin
Leading Substrings
Write a method that returns a list of all substrings of a string 
that start at the beginning of the original string. 
The return value should be arranged in order from shortest to longest substring.

PROBLEM
inputs: string
ouputs: array of strings
requirements: determine each substring of a string starting from the beginning, arranged shortest to longest
questions: mutate?, multiple words?, numbers?

DATA
string: 'abc'
array: ['a', 'ab', 'abc']

ALGO
iterate over the string
store consequtively longer substrings on each itersation

PSEUDO
sub_strings = []

string.chars.each_with_index do |_, index|
  sub_strings << string[0, index]
end

sub_strings.sort { |a, b| b <=> a }
=end

require 'pry'

def leading_substrings(string)
  sub_strings = []

  string.chars.each_with_index do |_, index|
    sub_strings << string[0, index + 1]
  end

  sub_strings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']