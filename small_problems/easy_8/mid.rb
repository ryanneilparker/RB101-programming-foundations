=begin
Get The Middle Character
Write a method that takes a non-empty string argument, 
and returns the middle character or characters of the argument. 
If the argument has an odd length, 
you should return exactly one character. 
If the argument has an even length, you should return exactly two characters.

PROBLEM
inputs: string
ouputs: string
requirements: return middle character (or two) of the string
questions: mutate?, spaces count as chars?

DATA
string: 'a test'
array: ['a', ' ', 't', 'e', 's', 't']
string: 'te'

ALGO
split string into chars
determine if one or two mid chars
extract mid char/s and convert to string
return string

PSEUDO
chars = string.chars
midpoint = chars.size / 2
midchars = nil

if chars.size.odd?
  midchars = chars[midpoint]
else
  midchars = chars[midoint..(midpoint + 1)]
end

midchars.join
=end

require 'pry'

def center_of(string)
  chars = string.chars
  midpoint = chars.size / 2
  midchars = []

  if chars.size.odd?
    midchars << chars[midpoint]
  else
    midchars << chars[(midpoint - 1)..midpoint]
  end

  midchars.join
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'