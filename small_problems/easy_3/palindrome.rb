# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. 
# A palindrome reads the same forward and backward. 
# For this exercise, case matters as does punctuation and spaces.

=begin
PROBLEM
inputs: string
outputs: bolean

EXAMPLES
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

DATA
keep original string
output boolean

ALGO
string == string.reverse ? true : false
=end

def palindrome?(string)
  string == string.reverse ? true : false
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true