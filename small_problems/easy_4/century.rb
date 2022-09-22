# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.

=begin
PROBLEM
inputs: integer
ouputs: string
requirements: must end with the appropriate suffix

EXAMPLES
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

DATA
input integer -> century integer -> string with suffix

ALGO
Determine Century:
  if last digit > 0
    cent = int / 100 + 1
  else
    cent = int / 100
  end
Determine Suffix:
  case last_2_digits
  when 1* th
  when *1 st
  when *2 nd
  when *3 rd
  else th
Concatenate century and suffix
return string
=end
require 'pry'

def cent(year)
  digits = year.digits

  if digits.first > 0
    cent = year / 100 + 1
  else
    cent = year / 100
  end

  cent
end

def suffix(cent)
  digits = cent.digits.reverse
  
  suffix = if digits[-2] == 1 && digits.size >= 2
    'th'
  elsif digits.last == 1
    'st'
  elsif digits.last == 2
    'nd'
  elsif digits.last == 3
    'rd'
  else
    'th'
  end

  suffix
end

def century(year)
  cent = cent(year)
  suffix = suffix(cent)

  century = cent.to_s + suffix
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'