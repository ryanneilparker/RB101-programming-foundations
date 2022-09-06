# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

shortened_names = []
counter = 0
loop do
  break if counter == flintstones.size

  shortened_names[counter] = flintstones[counter].slice(0, 3)

  counter += 1
end

p shortened_names