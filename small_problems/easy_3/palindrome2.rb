# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. 
# This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters.

def real_palindrome?(string)
  chars = string.chars.map { |char| char.downcase }
  alphanumeric_chars = chars.select { |char| char =~ /\A\p{Alnum}+\z/ }
  alphanumeric_chars.join == alphanumeric_chars.join.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false