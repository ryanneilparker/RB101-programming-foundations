=begin
Now I Know My ABCs
A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. 
Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise

PROBLEM
inputs: string
outputs: boolean
requirements: check if a word can be spelled with the available letters, and that the exclusive pairs are not used
questions: case senstive?, mutate?, helper methods?, numbers count?

DATA
word string: 'bag'
letters array: ['b', 'a', 'g']
all_letters array: ['b', 'o', 'x', 'k', ...]
first_letters array: ['b', 'x', 'd', ...]
second_letters array: ['o', 'k', 'p', ...]
letter_blocks hash: {'b' => 'o', ...}

ALGO
split word up into letters array.
check if letters of word are present in all_letters array else return false
check if any of the words letters are exlusive pairs if true return false
else return true

PSEUDO
word_letters = word.chars

letter_blocks = {'b' => 'o', ...}

all_letters = letter_blocks.keys + letter_blocks.values

return false unless all_letters.all?(word_letters)

letter_words.each do |letter|
  if letter_blocks.keys.include?(letter)
    return false if word_letters.include?(letter_blocks[letter])
  elsif letter_blocks.values.include?(letter)
    return false if word_letters.include?(letter_blocks.key[letter])
  end
end

return true
=end

require 'pry'

FIRST_LETTERS = %w(b x d c n g r f j h v l z)
SECOND_LETTERS = %w(o k q p a t e s w u i y m)
ALL_LETTERS = FIRST_LETTERS + SECOND_LETTERS
LETTER_BLOCKS = FIRST_LETTERS.zip(SECOND_LETTERS).to_h

def block_word?(word)
  word_letters = word.downcase.chars

  return false unless ALL_LETTERS.any? { |letter| word_letters.include?(letter) }

  word_letters.each do |letter|
    if LETTER_BLOCKS.keys.include?(letter)
      return false if word_letters.include?(LETTER_BLOCKS[letter])
    elsif LETTER_BLOCKS.values.include?(letter)
      return false if word_letters.include?(LETTER_BLOCKS.key(letter))
    end
  end

  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true