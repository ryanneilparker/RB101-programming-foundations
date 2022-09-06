# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

letters = statement.chars
counts = []
letters.each { |letter| counts << letters.count(letter)}

letter_frequency = letters.zip(counts).to_h

p letter_frequency