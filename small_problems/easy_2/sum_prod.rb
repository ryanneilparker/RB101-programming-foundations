puts "Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts "Enter 's' to compute the sum, or 'p' to compute the product."
operation = gets.chomp

range = 1..number

sum = range.sum

product = 1
range.each do |int|
  product *= int
end

if operation == 's'
  puts "The sum of integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "That's just invalid my dude..."
end
