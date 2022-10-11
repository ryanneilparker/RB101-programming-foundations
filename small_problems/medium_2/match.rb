=begin
Matching Parentheses?
Write a method that takes a string as an argument, 
and returns true if all parentheses in the string are properly balanced, 
false otherwise. 
To be properly balanced, 
parentheses must occur in matching '(' and ')' pairs.

PROBLEM
inputs: string
outputs: boolean
requirements: check if parentheses are balanced
questions: curly braces? (no), square braces? (no), many pairs? (yes)

DATA
input string: '(test)'
char array: ['(', 't', 'e', 's', 't', ')']
bracket array: ['(', ')']
left_count int: 1
right_count int: 1

ALGO
split input string into char array
iterate thu char array and extract brackets
count left brackets
count right brackets
compare
return result
=end

require 'pry'

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

p balanced?('((What) (is this))?') # true
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false