=begin
Double Char (Part 1)
Write a method that takes a string, and returns a new string in which every character is doubled.

=end

require 'pry'

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z) + %w(b c d f g h j k l m n p q r s t v w x y z).map(&:upcase)

def consonant?(char)
  CONSONANTS.include?(char)
end

def double_consonants(string)
  chars = string.chars
  new_chars = []

  chars.each do |char|
    new_chars << char << char if consonant?(char)
    new_chars << char unless consonant?(char)
  end

  new_chars.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""