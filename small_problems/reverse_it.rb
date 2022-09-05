# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

def reverse_it(sentence)
  words = sentence.split(' ')
  words.reverse.join(' ')
end

p reverse_it('one two three') == 'three two one'
p reverse_it('she did it') == 'it did she'
p reverse_it('what where when') == 'when where what'

puts reverse_it('Hello World') == 'World Hello'
puts reverse_it('Reverse these words') == 'words these Reverse'
puts reverse_it('') == ''
puts reverse_it('    ') == '' # Any number of spaces results in ''

