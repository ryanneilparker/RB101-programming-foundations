# Write a program that solicits 6 numbers from the user, 
# then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

=begin
PROBLEM
inputs: 6 integers
outputs: boolean

EXAMPLES
search([1, 2, 3, 4, 5, 6]) == false
search([1, 2, 3, 4, 5, 4]) == true

DATA
store 5 inputs as an array
store 6th input as an integer

ALGO
init arr
init last
while arr.size < 6
  request integer input
  append input to arr
pop last integer into last
check if arr.include?(last)
return boolean
print relevant message
=end

def prompt(msg)
  puts "=> #{msg}."
end

def collect_input
  inputs = []

  loop do
    prompt("Please enter a valid integer (#{inputs.size} / 6):")
    input = gets.chomp

    next unless input.to_i.to_s == input

    inputs << input.to_i

    break if inputs.size == 6
  end

  last_input = inputs.pop

  [inputs, last_input]
end

def search(arr)
  arr[0].include?(arr[1])
end

def print_message(boolean)
  if boolean
    prompt("Yes! The last number is contained within the first 5.")
  else
    prompt("No... The last number is not contained within the first 5.")
  end
end

prompt("Welcome to the number searcher!")
input = collect_input
print_message(search(input))