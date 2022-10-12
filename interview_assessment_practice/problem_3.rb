# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

=begin
PROBLEM
inputs: String
outputs: String
requirements: upcase every 2nd letter of every 3rd word.
questions: already upcased? (leave), numbers? (no), punctuation? (no), start? (no), mutate? (yes)

DATA
input string: 'this is a test'
words array: ['this', 'is', 'an', 'test']
new_words array: ['this', 'is', 'aN', 'test']
output string: 'this is aN test'

ALGO
break the string up into an array of words.
iterate over words array,
if index+1 multiple of 3,
  then iterate over characters
    upcase 2nd char
end
end

PSEUDO
words = string.split(' ')

words.each_with_index do |word|
  if (index + 1) % 3 == 0
    word.chars[1].upcase!
  end
end

words.join(' ')

=end

require 'pry'

def to_weird_case(string)
  new_words = []
  words = string.split(' ')

  words.each_with_index do |word, index|
    if (index + 1) % 3 == 0 && word.size > 1
      chars = word.chars
      #binding.pry
      chars.map!.with_index { |char, index| index.odd? ? char.upcase! : char }
      #binding.pry
      new_word = chars.join
      new_words << new_word
    else
      new_words << word
    end
  end

  new_words.join(' ')
end

# Examples:
p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case('It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".
