=begin
For this practice problem, write a one-line program that creates the following output 10 times, 
with the subsequent line indented 1 space to the right:

Copy Code
The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!
=end

string = "The Flintstones Rock!"

10.times do 
  puts string
  string.prepend(" ")
end
