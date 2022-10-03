=begin
Welcome Stranger
Create a method that takes 2 arguments, 
an array and a hash. 
The array will contain 2 or more elements that, 
when combined with adjoining spaces, 
  will produce a person's name. 
  The hash will contain two keys, :title and :occupation, 
  and the appropriate values. 
  Your method should return a greeting 
  that uses the person's full name, 
  and mentions the person's title and occupation.

  PROBLEM
  inputs: array, hash
  ouputs: interpolated string
  requirements: join array elements together
  questions: output or return?

  EXAMPLE
  greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == Hello, John Q Doe! Nice to have a Master Plumber around.

  DATA
  array: ['name', 'name',...]
  hash: {a: title, b: occupation}
  string_name: 'name name'
  string_title: 'title'
  string_occupation: 'occupation'
  string: 'interpolated string'

  ALGO
  Prompt user input
  extract name from array
  extract title from hash
  extract occupation from hash
  interpolate string

  PSEUDO
  name = array.join(' ')
  title = hash[title:]
  occupation = hash[occupation]
  string literal
=end

require 'pry'

def greetings(name_array, detail_hash)
  name = name_array.join(' ')
  title = detail_hash[:title]
  occupation = detail_hash[:occupation]
  
  "Hello, #{name}! Nice to have a #{title} #{occupation} around."
  #binding.pry
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == "Hello, John Q Doe! Nice to have a Master Plumber around."
