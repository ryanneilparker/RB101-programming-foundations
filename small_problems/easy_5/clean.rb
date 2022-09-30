=begin
Clean up the words
Given a string that consists of some words (all lowercased) 
and an assortment of non-alphabetic characters, 
write a method that returns that string 
with all of the non-alphabetic characters replaced by spaces. 
If one or more non-alphabetic characters occur in a row, 
you should only have one space in the result 
(the result should never have consecutive spaces).

PROBLEM
inputs: lowercase string
outputs: lowercase string
requirements: remove non-alphanumeric chars, replace any number of them with only 1 space

DATA
string 'what's my n@me'
array [w, h, a, t, ', s, , m, ...]
array [w, h, a, t, , s, , m, ...]
string 'what s my n me'

ALGO
split string into chars
loop through chars
  if char is alphanum or space add to output arr
  else add space to output arr
remove double spaces from output array
return output array
=end

require 'pry'

def alphanumeric?(char)
  chars = ('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a << ' '

  chars.include?(char)
end

def remove_double_spaces(string)
  prefix = ''
  suffix = ''

  prefix = ' ' if string[0] == ' '
  suffix = ' ' if string[-1] == ' '

  prefix + string.split(' ').join(' ') + suffix
end

def cleanup(string)
  clean_string = string.chars.map do |char|
    if alphanumeric?(char)
      char
    else
      ' '
    end
  end

  remove_double_spaces(clean_string.join)
end

p cleanup("---what's my +*& line?") == ' what s my line '
