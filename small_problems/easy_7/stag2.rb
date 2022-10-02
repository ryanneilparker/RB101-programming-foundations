=begin
Staggered Caps (Part 2)
Modify the method from the previous exercise 
so it ignores non-alphabetic characters 
when determining whether it should uppercase or lowercase each letter. 
The non-alphabetic characters should still be included in the return value;
they just don't count when toggling the desired case.

PROBLEM
inputs: string
ouputs: string
requirements: upcase every other letter
questions:

DATA
string: 'TE_ST'
string: 'te_st'
array: ['t', 'e', '_', 's', 't']
array: ['T', 'e', '_', 'S', 't']
string: 'Te_St'

ALGO
upper? = true

loop through array
  if upper? then upcase and add to new arr
  elsif !upper? then downcase and add to new arr
  if non alphnum then just add to new arr
join new arr to string

PSEUDO
LETTERS = ('a'..'z').to_a
upper? = true

chars = string.downcase.chars
new_chars = []

chars.each do |char|
  if LETTERS.include?(char) && upper?
    new_chars << char.upcase
  elsif LETTERS.include?(char) && !upper?
    new_chars << char.downcase
  else
    new_chars << char
  end

  new_chars.join
=end

require 'pry'

LETTERS = ('a'..'z').to_a


def staggered_case(string)
  chars = string.downcase.chars
  new_chars = []
  upper_true = true

  chars.each do |char|
    if LETTERS.include?(char) && upper_true
      new_chars << char.upcase
      upper_true = !upper_true
    elsif LETTERS.include?(char) && !upper_true
      new_chars << char.downcase
      upper_true = !upper_true
    else
      new_chars << char
    end
  end

  new_chars.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'