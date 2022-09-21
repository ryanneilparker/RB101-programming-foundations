# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

def prompt(msg)
  puts "=> #{msg}"
end

def to_feet(meters)
  meters * 10.7639
end


loop do
  puts "Welcome to how big is the room!"
  puts "-------------------------------"

  prompt("Enter the length of the room in meters:")
  length = gets.chomp.to_i  

  prompt("Enter the width of the room in meters:")
  width = gets.chomp.to_i

  square_meters = length * width
  square_feet = to_feet(length) * to_feet(width)

  prompt("The room is #{square_meters} square meters or #{square_feet} square feet!")

  prompt("Would you like to measure another room? (y/n)")
  answer = gets.chomp
  break if answer == 'n'
end

puts "Thanks for coming!"
