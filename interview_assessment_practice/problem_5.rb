# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

=begin
PROBLEM
inputs: String
outputs: String
requirements: count occurences of letters and return the most common letter

DATA
input string: 'aaa bb ccc'
unique_chars array: ['a', 'b', 'c']
chars hash: {'a' => 3, 'b' => 2, 'c' => 3}

ALGO
split string into array of unique chars.
create hash with keys of unique chars.
set the value of each key to the count of that letter in the string.
determine min value.
return first key with min value.

PSEUDO
unique_chars = string.chars.uniq
chars = Hash.new

chars.keys = unique_chars
chars.values = unique_chars.map {|char| string.count(char) }

chars.key(chars.values.max)

=end

def least_common_char(string)
  unique_chars = string.downcase.chars.uniq

  keys = unique_chars
  values = unique_chars.map { |char| string.downcase.count(char) }
  chars = keys.zip(values).to_h

  chars.key(chars.values.min)
end

# Examples:
p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'

# The tests above should print "true".
