=begin
Word to Digit
Write a method that takes a sentence string as input, 
and returns the same string with any sequence of the words 
'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' 
converted to a string of digits.

PROBLEM
inputs: string
ouputs: string
requirements: convert any names of numbers into the digits and return string
questions: actual numbers?, sixty nine?

DATA
input string: 'There are one two three ducks.'
word array: ['There', 'are', 'one', 'two', 'three', 'ducks']
new array: ['There', 'are', '1', '2', '3', 'ducks']
dictionary hash: {'one' => '1', 'two' => '2', 'three' => 3, ...}
ouput string: 'There are 1 2 3 ducks.'

ALGO
split input string up into array of words
iterate through words
  if that word is present in the hash dictionary
    replace it with the digit
  end
end
join new array back into string
return new string

PSEUDO
words = string.split(' ')

words.each_with_index do |word, index|
  if dictionary.keys.include?(word.downcase)
    words[index] = dictionary[word.downcase]
  end
end

words.join(' ')
=end

require 'pry'

NUMBER_NAMES = %w(one two three four five six seven eight nine)
NUMBERS_DIGITS = %w(1 2 3 4 5 6 7 8 9)
DIGIT_HASH = NUMBER_NAMES.zip(NUMBERS_DIGITS).to_h

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') # 'Please call me at 5 5 5 1 2 3 4. Thanks.'