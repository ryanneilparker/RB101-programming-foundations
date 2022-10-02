=begin
Staggered Caps (Part 1)
Write a method that takes a String as an argument, 
and returns a new String that contains the original value 
using a staggered capitalization scheme 
in which every other character is capitalized, 
and the remaining characters are lowercase. 
Characters that are not letters should not be changed, 
but count as characters when switching between upper and lowercase.

PROBLEM
inputs: string
outputs: string
requirements: capitalize every even indexed char, lowercase all others
questions: mutate?

DATA
string: 'TE_ST
array: ['T', 'E', '_', 'S', 'T']
array: ['T', 'e', '_', 's', 'T']
string: 'Te_sT'

ALGO
LETTERS = abc...

lowercase string

split string into arr of chars

new_chars = []

iterate thru chars
  if index is odd and char is letter
    uppercase char
  elsif index is even and char is letter
    lowercase char
  else
    copy char
  end
end

new_chars.joinr

PSEUDO
LETTERS = ('a'..'z').to_a

chars = sting.chars.downcase

new_chars = []

chars.each_with_index do |char, index|
  if LETTERS.include?(char) && index.odd?
    new_chars << char.upcase
  elsif LETTERS.include?(char) && index.even?
    new_chars << char.downcase
  else
    new_chars << char
  end
end

new_chars.join
=end

require 'pry'

LETTERS = ('a'..'z').to_a

def staggered_case(string)
  chars = string.downcase.chars

  new_chars = []

  chars.each_with_index do |char, index|
    if LETTERS.include?(char) && index.even?
      new_chars << char.upcase
    elsif LETTERS.include?(char) && index.odd?
      new_chars << char.downcase
    else
      new_chars << char
    end
  end

  new_chars.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'