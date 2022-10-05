=begin
Uppercase Check
Write a method that takes a string argument, 
and returns true if 
all of the alphabetic characters inside the string are uppercase, 
false otherwise. 
Characters that are not alphabetic should be ignored.

PROBLEM
inputs: string
ouputs: boolean
requirements: if all alphabetic chars of string are upcase then return true, false otherwise
questions: return if no alphabetic chars?

DATA
string: 'Test'
boolean: false

ALGO
save initial string
copy string
upcase copy
compare two versions for equality

PSEUDO
string == string.upcase
=end

require 'pry'

def uppercase?(string)
string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true