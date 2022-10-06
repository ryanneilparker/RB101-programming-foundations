=begin
Grade book
Write a method that determines the mean (average) of the three scores passed to it, 
and returns the letter value associated with that grade.

PROBLEM
inputs: 3 ints
outputs: string
requirements: convert numeric average of ints into letter grade
questions: mutate?, float?

DATA
int: 80
int: 79
int: 81
int: 80
string: 'B'
hash: {A: 9, B: 8, ...}

ALGO
create letter grade hash
find average of 3 ints
convert average to letter grade

PSEUDO
grades = {90: 'A', 80: 'B', C: 70, D: 60, F: 0}

average = sum(gr1, gr2, gr3) / 3

letter_grade = 'NA'

if average >= 90
  grades[:90]
  ...
=end

require 'pry'

def get_grade(gr1, gr2, gr3)
  grades = {90 => 'A', 80 => 'B', 70 => 'C', 60 => 'D', 0 => 'F'}

  average = (gr1 + gr2 + gr3) / 3.00

  case average
  when 90..100
    grades[90]
  when 80...90
    grades[80]
  when 70...80
    grades[70]
  when 60...70
    grades[60]
  else
    grades[0]
  end
 end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"