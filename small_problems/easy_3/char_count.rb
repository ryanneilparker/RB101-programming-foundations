# Write a program that will ask a user for an input of a word or multiple words 
# and give back the number of characters. 
# Spaces should not be counted as a character.

=begin
PROBLEM
inputs: string
ouputs: int

EXMAPLE
char_count("walk") == 4
char_count("walk, don't run") == 13

DATA
input string -> split into array removing spaces

ALGO
request string input
split string into chars on spaces
count length of chars arr
display results
=end

def char_count(string)
  string.chars.select { |char| char != " "}.size
end

puts "Please enter one or more words:"
string = gets.chomp

puts "There are #{char_count(string)} characters in #{string}!"