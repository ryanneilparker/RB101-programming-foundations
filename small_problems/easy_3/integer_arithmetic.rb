# Write a program that prompts the user for two positive integers, 
# and then prints the results of the following operations on those two numbers: 
# addition, subtraction, product, quotient, remainder, and power. 
# Do not worry about validating the input.

=begin
PROBLEM
inputs: 2 +ve integers
outputs: array of ints

EXAMPLES
arithmetic(1, 2) == [3, -1, 2, 0.5, 0, 1]

DATA
store inputs in an array
store calculated outputs in an array

ALGO
prompt for number
store number in input arr
prompt fo second number
store number in input arr

perform calculations using inputs
store output of each calculation in ouput array

print out the results of the arithmetic
=end

def prompt(msg)
  puts "=> #{msg}."
end

def collect_input
  inputs = []

  prompt("Please enter the first integer:")
  inputs[0] = gets.chomp.to_i

  prompt("Please enter the second integer:")
  inputs[1] = gets.chomp.to_i

  inputs
end

def calculate(arr)
  sum = arr[0] + arr[1]
  difference = arr[0] - arr[1]
  product = arr[0] * arr[1]
  quotient = arr[0] / arr[1] # asm integer division
  remainder = arr[0].remainder(arr[1])
  power = arr[0] ** arr[1]

  [sum, difference, product, quotient, remainder, power]
end

def print_results(out, input)
  num1 = input[0].to_s
  num2 = input[1].to_s
  operators = %w(+ - * / % **)
  
  puts "Results:"
  puts "........"
  
  out.each_with_index do |result, index|
    puts num1 + " #{operators[index]} " + num2 + ' = ' + "#{result}"
  end
end

puts "Welcome to the arithmetic calculator!"
puts "-------------------------------------"

input = collect_input
results = calculate(input)
print_results(results, input)