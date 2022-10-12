# Given a non-empty string check if it can be constructed by taking a substring of it,
# and appending multiple copies of the substring together.
# You may assume the given string consists of lowercase English letters only.

=begin
PROBLEM
inputs: String
outputs: boolean
requirements: check if string can be constructed by multiplying substring.
questions: case sensitive? (no), mutate? (no), all substrings? (yes), single? (yes)

DATA
input string: 'abab'
sub strings: 'a', 'ab', 'aba', 'bab', 'ab'

ALGO
Generate an array of all substrings
multiply each substring until it meets or excedes the length of the String,
on each iteration check if the multiplied substring equals the original string.

PSEUDO
substrings = []
chars = string.chars

start_index = 0
end_index = 0

loop do
  loop do
    substrings << chars[start_index..end_index].join

    end_index += 1
    break if end_index == chars.size - 1
  end
  start_index += 1
  break if start_index == chars.size - 1
end

substrings.each do |substring|
  loop do
    return true if substring == string
    substring += substring
    break if substring.size > string.size
  end

  false
end
=end

require 'pry'

def repeated_substring_pattern(string)
  substrings = []
  chars = string.chars

  start_index = 0
  stop_index = 0

  loop do
    loop do
      substrings << chars[start_index..stop_index].join

      stop_index += 1
      break if stop_index >= chars.size
    end

    start_index += 1
    break if start_index >= chars.size
  end

  substrings.delete(string)

  substrings.each do |substring|
    loop do
      return true if substring == string

      substring += substring
      break if substring.size > string.size
    end
  end

  false
end

# Examples
p repeated_substring_pattern('abab') == true
p repeated_substring_pattern('aba') == false
p repeated_substring_pattern('aabaaba') == false
p repeated_substring_pattern('abaababaab') == true
p repeated_substring_pattern('abcabcabcabc') == true
