=begin
Palindromic Substrings
Write a method that returns a list of all substrings of a string that are palindromic. 
That is, each substring must consist of the same sequence of characters forwards as it does backwards. 
The return value should be arranged in the same sequence as the substrings appear in the string. 
Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; 
that is, "AbcbA" is a palindrome, 
but neither "Abcba" nor "Abc-bA" are. 
In addition, assume that single characters are not palindromes.

PROBLEM
inputs: string
outputs: array of strings
requirements: find all palindromic substrings of a given string, and return in the order they occur
questions: mutate?, numbers?, 

DATA
string: 'ababa'
array: ['aba', 'ababa]

ALGO
use substring to get all substrings
then check if each substring is palindromic
if it is save it to new array

PSEUDO
palindromic_substrings = []

substrings.each do |string|
  palindromic_substrings << string if string == string.reverse
end

palindromic_substrings
=end

require 'pry'

def substrings(string)
  sub_strings = []

  start = 0
  while start < string.chars.size
    stop = start
    while stop < string.chars.size
      sub_strings << string[start..stop]
      #binding.pry
      stop += 1
    end
    start += 1
  end

  sub_strings
end

def palindromes(string)
  substrings = substrings(string)
  palindromes = []

  substrings.each do |string|
    palindromes << string if (string == string.reverse && string.size > 1)
  end

  palindromes
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]