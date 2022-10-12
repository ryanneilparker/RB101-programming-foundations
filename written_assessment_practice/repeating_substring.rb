=begin
PROBLEM
inputs: array of lowercase strings
ouputs: a list of repeating characters
requirements: must include duplicates, non-destructive

EXAMPLE:
p common_chars(%w(bella label roller)) == ['e', 'l', 'l']

DATA
duplicate string array
loop the first word
  loop through the string array
    loop through each letter of each word
    if first letter == second letter
      duplicates << first_letter


=end

def common_chars(strings)
  duplicates = []

  strings.first.chars.each do |letter_1|
    strings.each do |word|
      word.chars.each do |letter_2|
        if letter_1 == letter_2
          duplicates << letter_1
          next
        end
      end
    end
  end

  duplicates
end

p common_chars(%w(bella label roller))
p common_chars(%w(bella label roller)) == ['e', 'l', 'l']
