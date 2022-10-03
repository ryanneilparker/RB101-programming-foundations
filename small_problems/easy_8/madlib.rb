=begin
Madlibs
Mad libs are a simple game where you create a story template with blanks for words. 
You, or another player, then construct a list of words 
and place them into the story, 
creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

PROBLEM
inputs: strings
ouputs: string
requirements: prompt user for several words, then combine them into a sentence
questions: loop?

DATA
string: 'noun'
string: 'verb'
string: 'adjective'
string: 'adverb'
string: "Do you verb your adjective noun adverb? That's hilarious!"

ALGO
prompt user for inputs
save inputs
interpolate words into sentence and ouput
=end

def prompt(msg)
  puts "=> #{msg}"
end

def get_words
  prompt("Enter a noun:")
  noun = gets.chomp
  prompt("Enter a verb:")
  verb = gets.chomp 
  prompt("Enter an adjective:")
  adjective = gets.chomp
  prompt("Enter an adverb:")
  adverb = gets.chomp

  [verb, adjective, noun, adverb]
end

def display_ouput(words)
  puts "\n\nDo you #{words[0]} your #{words[1]} #{words[2]} #{words[3]}? That's hilarious!"
end

puts("\n\n")
prompt("Welcome to MADLIB!")
puts("---------------------\n\n")

display_ouput(get_words)

puts("\n\n")
prompt("Thanks for playing!")
puts("----------------------\n\n")
