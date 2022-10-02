=begin
Lettercase Counter
Write a method that takes a string, 
and then returns a hash that contains 3 entries: 
one represents the number of characters in the string that are lowercase letters, 
one the number of characters that are uppercase letters, 
and one the number of characters that are neither.

PROBLEM
inputs: string
outputs: hash
requirements: count lowercase letters, count uppercase letters, count neithers
questions: mutate?, always single string?, does space count as neither?

DATA
string: 'Abc 123'
array: ['A', 'b', 'c', ' ', 1, 2, 3]
array: ['A']
array: ['b', 'c']
array: [' ', 1, 2, 3]
hash: {lowercase: 2, uppercase: 1, neither: 4}

ALGO
split string into char array
select all lowercase chars from array
select all uppercase chars from array
select the rest
create hash and add size of each arr to values

PSEUDO

LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

chars = string.chars

lowercase = []
uppercase = []
neither = []

chars.each do |char|
  if LOWERCASE.include?(char)
    lowercase << char
  elsif UPPERCASE.include?(char)
    uppercase << char
  else
    neither << char
  end

  case_count = {lowercase: lowercase.size, uppercase: uppercase.size, neither: neither.size}
=end

require 'pry'

LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def letter_case_count(string)
  chars = string.chars
  lowercase = []
  uppercase = []
  neither = []

  chars.each do |char|
    if LOWERCASE.include?(char)
      lowercase << char
    elsif UPPERCASE.include?(char)
      uppercase << char
    else
      neither << char
    end
  end

  case_count = {lowercase: lowercase.size, uppercase: uppercase.size, neither: neither.size}
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }