=begin
Right Triangles
Write a method that takes a positive integer, n, as an argument, 
and displays a right triangle whose sides each have n stars. 
The hypotenuse of the triangle (the diagonal side in the images below) 
should have one end at the lower-left of the triangle, 
and the other end at the upper-right.

PROBLEM
inputs: int
ouputs: string
requirements: print triangle of *s, hypotenuse slants up right to left
questions: return as single string?

DATA
int: 3
string: '  *'
string: ' **'
string: '***'
string: '  *\n **\n***'

ALGO
generate each layer
stick layers together
return string
=end

require 'pry'

def generate_layer(fill, size)
  ' ' * (size - fill) + '*' * fill
end

def triangle(size)
  size.times do 

end

p generate_layer(2, 3)



exit
triangle(3) == "    *
**
***"