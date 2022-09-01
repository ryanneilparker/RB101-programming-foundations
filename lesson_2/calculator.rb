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

def valid_number? (number)
  number != 0
end

def valid_operator?(operator)
  ["+", "-", "*", "/"].include?(operator)
end

puts "\nWelcome to the Ruby calculator! \n \n"

loop do
  num1 = ''
  loop do
    puts "Please enter a valid number:"
    num1 = gets.chomp.to_i
    break if valid_number?(num1)
  end

  operator = ''
  loop do
    puts "Please enter a valid operation (+, -, *, /):"
    operator = gets.chomp
    break if valid_operator?(operator)
  end

  num2 = ''
  loop do
    puts "Please enter another number:"
    num2 = gets.chomp.to_i
    break if valid_number?(num2)
  end


  case operator
  when "+"
    puts "The sum is #{plus(num1, num2)}!"
  when "-"
    puts "The difference is #{minus(num1, num2)}!"
  when "*"
    puts "The product is #{multiply(num1, num2)}!"
  when "/"
    puts "The quotient is #{divide(num1.to_f, num2.to_f)}!"
  end

  puts "\nDo you want to perform another calculation (y/n)?"
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')

end

puts "Thank you for using the ruby calculator!"