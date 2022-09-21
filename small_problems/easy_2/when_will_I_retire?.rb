puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

year = Time.now.year
time = (retirement_age - age)
date = year + time

puts "It's #{year} you will retire in #{date}."
puts "You have only #{time} years of work to go!"