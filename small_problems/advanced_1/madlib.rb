=begin
Madlibs Revisited
Make a madlibs program that reads in some text from a text file that you have created, 
and then plugs in a selection of randomized nouns, verbs, adjectives, and adverbs into that text and prints it. 
You can build your lists of nouns, verbs, adjectives, and adverbs directly into your program, 
but the text data should come from a file or other external source. 
Your program should read this text, and for each line, 
it should place random words of the appropriate types into the text, 
and print the result.

=end

require 'pry'

ADJECTIVES = %w(quick lazy sleepy ugly pretty smelly)
NOUNS = %w(fox dog mouse cat rabbit eagle snail human Jamie)
VERBS = %w(jumps lifts farts bites licks)
ADVERBS = %w(easily slowly noisily aggressively violently loudly)

text = File.read("madlib.txt").split

text.map! do |word|
  case word
  when '%{adjective}'
    ADJECTIVES.sample
  when '%{noun}', '%{noun},'
    NOUNS.sample
  when '%{verb}'
    VERBS.sample
  when '%{adverb}'
    ADVERBS.sample
  else
    word
  end
end

puts text.join(' ')



