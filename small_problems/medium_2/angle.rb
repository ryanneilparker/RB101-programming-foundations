=begin
Tri-Angles

A triangle is classified as follows:
right One angle of the triangle is a right angle (90 degrees)
acute All 3 angles of the triangle are less than 90 degrees
obtuse One angle is greater than 90 degrees.

To be a valid triangle, 
the sum of the angles must be exactly 180 degrees, 
and all angles must be greater than 0: 
if either of these conditions is not satisfied, 
the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, 
and returns a symbol :right, :acute, :obtuse, or :invalid 
depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. 
You may also assume that the arguments are specified in degrees.

PROBLEM
inputs: 3 ints
outputs: symbol
requirements: check that triangle is valid, then classify type based on angles
questions: floats? (no), negative angles? (no), mutate? (no), helper methods? (yes)

DATA
angles array: [60, 60, 60]
angle_sum int: 180
max_angle int: 60

ALGO
check if valid triangle
check if max angle < 90 then accute
check if max angle > 90 then obtuse
check if max angle = 90 then right

PSEUDO
angles = [angle1, angle2, angle3]

return false unless angles.sum == 180
return false if angles.include?(0)

return :acute if angles.max < 90
return :right if angles.max == 90
return :obtuse if angles.max > 90
=end

require 'pry'

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  return :invalid unless angles.sum == 180
  return :invalid if angles.include?(0)

  return :acute if angles.max < 90
  return :right if angles.max == 90
  return :obtuse if angles.max > 90
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid