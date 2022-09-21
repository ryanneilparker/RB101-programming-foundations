# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

# prob
  # input positive integer
  # ouput a binary string starting with 1

# req
  # string.size == integer
  # string.first == '1'

# data
  # array -> string

# algo
  # create array from 0 to integer-1
  # iterate through array
    # if element is even
      # insert '1' into string
    # else (element is not even)
      # insert '0' into string
  # return string

def stringy(int)
  indices = 0..(int-1)
  string = ''

  indices.each do |index|
    string << '1' if index.even?
    string << '0' if index.odd?
  end

  string
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
