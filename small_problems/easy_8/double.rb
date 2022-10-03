=begin
Double Char (Part 1)
Write a method that takes a string, and returns a new string in which every character is doubled.

=end

require 'pry'

def repeater(string)
  chars = string.chars
  new_chars = []

  chars.each do |char|
    new_chars << char << char
  end

  new_chars.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''