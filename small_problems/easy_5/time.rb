# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, 
# and return the number of minutes before and after midnight, respectively. 
# Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

=begin
PROBLEM
inputs: string
ouputs: integer
requirements: integer must be number of minutes before or after midnight, integer must be in the range 0..1439, 2 seperate methods
questions: always string?, mutate?, 

DATA
string 'dd:dd'
array [dd, dd]
integer ddd

ALGO
Find number of hours & mins passed/before 00:00
  array = string.split(':')
  hours, minutes = array[0], array[1]


Convert hours to minutes and add other minutes
total_minutes = hours*60 + minutes

return integer
=end

require 'pry'

MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = 24 * MINUTES_IN_HOUR

def convert_to_min(string)
  hours_minutes = string.split(':')

  hours, minutes = hours_minutes[0], hours_minutes[1]

  total_minutes = minutes.to_i + hours.to_i * MINUTES_IN_HOUR
end

def after_midnight(time)
  return 0 if (time == '00:00' || time == '24:00')
  convert_to_min(time)
end

def before_midnight(time)
  return 0 if time == ('00:00' || time == '24:00')
  MINUTES_IN_DAY - convert_to_min(time)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0