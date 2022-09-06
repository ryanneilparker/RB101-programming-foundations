def titleize(sentence)
  capitalized_words = sentence.split(' ').each { |word| word.capitalize! }
  capitalized_words.join(' ')
end

p titleize(words) == "The Flintstones Rock"
