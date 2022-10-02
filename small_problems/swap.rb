=begin
Swap Case
Write a method that takes a string as an argument 
and returns a new string 
in which every uppercase letter is replaced by its lowercase version, 
and every lowercase letter by its uppercase version. 
All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

PROBLEM
inputs: string
outputs: string
requirements: swap case of each cahr in string, cant use String#swapcase
questions: mutate?, numbers?, symbols?

DATA
string: 'Dogs'
array: ['D', 'o', 'g', 's']
array: ['d', 'O', 'G', 'S']
string: 'dOGS'

ALGO
split string into chars
swap case of each char
join chars back into string

PSEUDO
LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

chars = string.chars
new_chars = []

chars.each do |char|
  if LOWERCASE.include?(char)
    new_chars << char.upcase
  elsif UPPERCASE.include?(char)
    new_chars << char.downcase
  else
    new_chars << char
  end

  new_chars.join
=end

require 'pry'

LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def swapcase(string)
  chars = string.chars
  new_chars = []

  chars.each do |char|
    if LOWERCASE.include?(char)
      new_chars << char.upcase
    elsif UPPERCASE.include?(char)
      new_chars << char.downcase
    else
      new_chars << char
    end
  end

  new_chars.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'