=begin
How long are you?
Write a method that takes a string as an argument, 
and returns an Array 
that contains every word from the string, 
to which you have appended a space 
and the word length.

You may assume that words in the string are separated by exactly one space, 
and that any substring of non-space characters is a word.

PROBLEM
inputs: string
ouputs: array
requirements: output array of words, with char chount appened to word
questions: mutate?, numerics count?

DATA
string: 'this is a test'
array: ['this', 'is', 'a', 'test']
array: [5, 2, 1, 4]
array: ['this 5', 'is 2', 'a 1', 'test 4']

ALGO
split sentence into words
count chars in each word
appen counts to words
return array

PSEUDO
words = string.split(' ')

counts = words.map{ |word| word.chars.size }

words.zip(counts).each {&:join}

=end

require 'pry'

def word_lengths(string)
  words = string.split(' ')

  counts = words.map{ |word| word.chars.size }

  words.zip(counts).map { |zip| zip.join(' ') }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
