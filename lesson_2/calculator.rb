# Build a command line calculator program that does the following:

# asks for two numbers
# asks for the type of operation to perform: add, subtract, multiply or divide
# displays the result

def plus (num1, num2)
  return num1 + num2
end

def minus (num1, num2)
  return num1 - num2
end

def multiply (num1, num2)
  return num1 * num2
end

def divide (num1, num2)
  return num1 / num2
end


puts "Please enter a number:"
num1 = gets.chomp.to_i

puts "Please enter an operation (+, -, *, /):"
operator = gets.chomp

puts "Please enter another number:"
num2 = gets.chomp.to_i

case operator
when "+"
  puts "The sum is #{plus(num1, num2)}!"
when "-"
  puts "The difference is #{minus(num1, num2)}!"
when "*"
  puts "The product is #{multiply(num1, num2)}!"
when "/"
  puts "The quotient is #{divide(num1, num2)}!"
end
