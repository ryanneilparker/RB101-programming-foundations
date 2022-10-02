=begin
Delete vowels
Write a method that takes an array of strings, 
and returns an array of the same string values, 
except with the vowels (a, e, i, o, u) removed.

PROBLEM
inputs: string array
ouputs: string array
requirements: remove all vowels from strings in string array, case sensitive, blank strings possible
questions: alphanum? mutate?

DATA
string array ['abc', 'def']
string 'abc'
string 'bc'
string array ['bc', 'df']

ALGO
iterate thru string array
  iterate thru each string
    select all the letters that are not vowels
    put them into a new string

  Add the new string to a new string array

Output the new string array

PSEUDO
new_word = ''
new_strings = []

strings.each do |word|
  word.each do |letter|
    new_word << unless vowel?(letter)
  end

  new_strings << new_word
end

return new_strings
=end

require 'pry'

VOWELS = %w(a e i o u A E I O U)

def vowel?(letter)
  VOWELS.include?(letter)
end

def remove_vowels(strings)
  new_strings = []

  strings.each do |word|
    new_word = ''

    word.each_char do |letter|
      new_word << letter unless vowel?(letter)
    end

    new_strings << new_word
  end

  new_strings
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']