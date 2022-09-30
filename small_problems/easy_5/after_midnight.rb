# After Midnight (Part 1)
# The time of day can be represented as the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). 
# Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

=begin
PROBLEM
inputs: integer
ouputs: interpolated string
requirements: - int before midnite and + int after midnight, 0 int means midnite
questions: is it always int, should mutate int

DATA
int
array
string

ALGO
Find number of hours
  hours = int/60 #=> +ve:0,int -ve:-1,-int 0:0

Find number of minutes
  minutes = int.remainder(60) #=> +ve:0,int -ve:-int 0:0

Find time
  if int +ve
    hour = 0 + hours.remainder(24)
    minute = minutes
  elsif int -ve
    hour = 12 - hours.remainder(24)
    minute = 60 - minutes
  else
    hour = 0
    minute = 0
  end
Time[hour, minute]

Return time interpolated into string
=end

require "pry"

def hours(int)
  int / 60
end

def minutes(int)
  int.remainder(60)
end

def format(hour, minute)
  hour = '0' + hour.to_s if hour.digits.size < 2
  minute = '0' + minute.to_s if minute.digits.size < 2

  hour.to_s + ':' + minute.to_s
end

def time_of_day(int)
  if int > 0
    hour = 0 + hours(int).remainder(24)
    minute = minutes(int)
  elsif int < 0
    hour = 24 + hours(int).remainder(24)
    minute = 60 + minutes(int)
  else
    hour = 0
    minute = 0
  end

  hour = 0 if hour == 24

  format(hour, minute)
end

# EXAMPLES
p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"