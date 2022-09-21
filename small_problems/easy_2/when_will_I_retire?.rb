puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

time = (retirement_age - age)
date = 2022 + time

puts "It's 2022 you will retire in #{date}."
puts "You have only #{time} years of work to go!"