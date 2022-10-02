=begin
Capitalize Words
Write a method that takes a single String argument 
and returns a new string that contains the original value of the argument 
with the first character of every word capitalized 
and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

PROBLEM
inputs: string
outputs: string
requiremments: capitalize the first letter of each word
questions: mutate?, always single string?, what if start with num/punc?, articles?

DATA
string: 'this is a test'
array: ['this', 'is', 'a', 'test']
array: ['This', 'Is', 'A', 'Test']
string: 'This Is A Test'

ALGO
split string into words
iterate over words
  capitalize each word
join words back into string
return string

PSEUDO
words = string.split(' ')
words.map!(&:capitalize)
words.join(' ')
=end

require 'pry'

def word_cap(string)
  words = string.split(' ')
  words.map!(&:capitalize)
  words.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'