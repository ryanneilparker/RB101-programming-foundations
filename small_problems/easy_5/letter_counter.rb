=begin
Write a method that takes a string with one or more space separated words 
and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

PROBLEM
inputs: string
ouputs: hash
requirements: hash should so distribution of word charcter counts, punctuation counts as achar, mutate?

DATA
string 'a string'
array ['a', 'string']
array [1, 6]
hash {1 => 1, 6 => 1}

ALGO
split string into array of words
map word array to word size arrray
tally each length
return hash
=end

def word_sizes(string)
  words = string.split(' ')
  chars_count = words.map(&:length)
  tally = chars_count.tally
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}