=begin
Unlucky Days
Write a method that returns the number of Friday the 13ths in the year given by an argument. 

You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) 
and that it will remain in use for the foreseeable future.

PROBLEM
inputs: int
outputs: int
requirements: determine number of friday the 13ths in a given year.
questions: jan to dec? (yes), account for leap years?

DATA
input int: 2001
start date: 2001-01-01
end date: 2002-01-01
count int: 4

ALGO
convert input to new date object, starting on the 1st of jan.
set end date to 1 year later.

step thru each day of the year,
if the day is a friday and the date is the 13th add to count
stop when end of year is reached
return count

PSEUDO
date = Date.new(year, 1, 1)
end_date = start_date.next_year

friday_13ths = []
while date != end_date
  firday_13ths << date if date.day == 13 && date.friday?
  date += 1
end

friday_13ths.size
=end

require 'pry'
require 'date'

def friday_13th(year)
  date = Date.new(year, 1, 1)
  end_date = date.next_year
  friday_13ths = []
  
  while date < end_date
    friday_13ths << date if date.day == 13 && date.friday?
    date += 1
  end

  friday_13ths.size
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2