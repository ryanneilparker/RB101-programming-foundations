=begin
  Write a method that takes one integer argument, which may be positive, negative, or zero. 
  This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.
=end

def odd(integer)
  integer.odd?
end

puts odd(1)
puts odd(0)
puts odd(-4)