=begin
Write a method that takes a string argument 
and returns a new string that contains the value of the original string 
with all consecutive duplicate characters collapsed into a single character. 
You may not use String#squeeze or String#squeeze!.

PROBLEM
inputs: string
ouputs: string
requirements: remove consecutive duplicates, no mutate, no String#squeeze
questions: lowercase?, alphum?

DATA
string 'ddaaiillyy double'
char_array ['d', 'd', 'a', 'a', ...]
clean_array ['d', 'a', ...]
clean_string 'daily double'

ALGO
split string into chars
add chars clean_array unless they are duplicates
join clean_array to get clean_string
return clean_string

PSUEDO
chars = string.chars

clean_chars = []
chars.each do |char|
  clean_chars << char unless char == clean_chars.last
end

clean_string = clean_chars.join
=end

require 'pry'

def crunch(string)
  chars = string.chars

  clean_chars = []
  chars.each { |char| clean_chars << char unless char == clean_chars.last }
  clean_chars.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
