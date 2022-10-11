=begin
Lettercase Percentage Ratio
In the easy exercises, 
we worked on a problem where we had to count the number of uppercase and lowercase characters, 
as well as characters that were neither of those two. 
Now we want to go one step further.

Write a method that takes a string, 
and then returns a hash that contains 3 entries: 
one represents the percentage of characters in the string that are lowercase letters, 
one the percentage of characters that are uppercase letters, 
and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

PROBLEM
inputs: string
outputs: hash
requirements: count number of upper/lower/neither chars and return hash of percentages of total chars
questions: punction?, mutate?, helper methods?, empty?

DATA
input string: 'aA!?'
chars array: ['a', 'A', '!', '?']
lowers array: ['a']
uppers array: ['A']
neithers array: ['!', '?']

ALGO
split string into chars array
iterate through chars
  if lower add to lowers array
  if upper add to uppers array
  if neither add to nethers array
count chars in each array
divide counts by total count
return hash of values

PSEUDO
LOWERS = ('a'..'z').to_a
UPPERS = ('A'..'Z').to_a

chars = string.chars
lowers = []
uppers = []
neithers = []

chars.each do |char|
  if LOWERS.include?(char)
    lowers << char
  elsif UPPERS.include?(char)
    uppers << char
  else
    neithers << char
  end
end

counts = [lowers.size, uppers.size, neithers.size]
total = counts.sum
percentages = counts.map { |count| (count.to_f / total.to_f) * 100 }

output_hash = {lowercase: percentages[0], uppercase: percentages[1], neither: percentages[2]}
=end

require 'pry'

LOWERS = ('a'..'z').to_a
UPPERS = ('A'..'Z').to_a

def letter_percentages(string)
  lowers = []
  uppers = []
  neithers = []
  chars = string.chars

  chars.each do |char|
    if LOWERS.include?(char)
      lowers << char
    elsif UPPERS.include?(char)
      uppers << char
    else
      neithers << char
    end
  end

  counts = [lowers.size, uppers.size, neithers.size]
  total = counts.sum
  percentages = counts.map { |count| (count.to_f / total) * 100 }

  output_hash = {lowercase: percentages[0], uppercase: percentages[1], neither: percentages[2]}
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }