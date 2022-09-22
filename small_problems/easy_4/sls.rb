# Write a method that takes two strings as arguments, 
# determines the longest of the two strings, 
# and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. 
# You may assume that the strings are of different lengths.

=begin
PROBLEM
inputs: 2 strings of different lengths
outputs: concatenated string

EXAMPLES
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

DATA
input string
store in array with longest in 0 index
output string

ALGO
select longest string and store in 0 index of array
store other string in 1 index
concatenate string
=end

def short_long_short(str1, str2)
  strs = []

  if str1.size > str2.size
    strs[0] = str1
    strs[1] = str2
  else
    strs[0] = str2
    strs[1] = str1
  end

  strs[1] + strs[0] + strs[1]
end

p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('', 'xyz') == "xyz"
