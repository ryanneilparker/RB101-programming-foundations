# Given an array of strings made only from lowercase letters,
# return an array of all characters that show up in all strings within the given array
# (including duplicates).
# For example if a character occurs 3 times in all strings but not 4 times,
# you need to include that character three times in the final answer.

=begin
PROBLEM
inputs: array of strings
ouputs: string Array
requirements: return array of letters that appear in all word, including duplicates.
questions: case? (no), mutate? (no)

DATA
input array: ['aa', 'aba', 'aca']
chars array: [['a', 'a'], ['a', 'b', 'a'], ['a', 'c', 'a']]
unique_chars array: ['a']
char_counts array: [2]

ALGO
explode each word in input array into an array of chars.
create an array of the unique chars in the first word.
create an array of the minimum count of each char in each word.
loop through unique_chars and add the coresonding number of that char to the ouput
=end

def common_chars(array)
  common_chars = []

  chars_array = array.map { |word| word.chars }

  unique_chars = chars_array[0].uniq

  unique_counts = []
  unique_chars.each_with_index do |char, index|
    unique_counts[index] = chars_array.map { |word| word.count(char) }.min
  end

  unique_chars.each_with_index do |char, index|
    unique_counts[index].times { common_chars << char }
  end

  common_chars
end

# Examples
p common_chars(['bella', 'lable', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
p common_chars(['aabbaaaa', 'ccdddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']) == []
