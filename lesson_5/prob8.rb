# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# loop hrough hash and extract words
words =[]
hsh.each do |key, _|
  words << hsh[key]
end
words.flatten!
p words

# Loop through words and extract letters
letters = []
words.each do |word|
  letters << word.split('')
end
letters.flatten!
p letters

# Lop through letters and extract vowels
vowels = []
letters.each do |letter|
  vowels << letter if letter =~ /[aeiou]/
end
p vowels