=begin
Letter Swap
Given a string of words separated by spaces, 
write a method that takes this string of words and returns a string 
in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, 
and that the string will always contain at least one word. 
You may also assume that each string contains nothing but words and spaces

PROBLEM
inputs: string
outputs: string
requirements: first and last letters of each word must be swapped
questions: always a string?, mutate?, ouput/return?

DATA
string 'word word word'
array [word, word, word]
subarray [w, o, r, d]

ALGO
array = word.split(' ')
loop thru array |word|
  save first letter
  save last letter
  reassign first to last vice versa
output = array.join(' ')

=end

require 'pry'

def swap(string)
  words = string.split(' ')

  new_words = words.map do |word|
    first_letter = word[0]
    last_letter = word[-1]

    word[0] = last_letter
    word[-1] = first_letter

    word
  end

  new_words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'