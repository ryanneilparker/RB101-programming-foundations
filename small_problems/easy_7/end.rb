=begin
The End Is Near But Not Here
Write a method that returns the next to last word in the String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

PROBLEM
inputs: string
outputs: string
requirements: return the penultimate word of a sentence
questions: mutate?, case sensitive?

DATA
string: 'last words'
array: ['last', 'words']
string: 'last'

ALGO
break string up into array of words
select penultimate word
return word as a string

PSEUDO
string.split[-2]
=end

def penultimate(string)
  string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'