# In the array:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be"

answer = 0
flintstones.each_with_index { |name, index| answer = index if name.start_with?("Be")} 
p answer