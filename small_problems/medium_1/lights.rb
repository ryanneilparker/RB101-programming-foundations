=begin
1000 Lights
You have a bank of switches before you, 
numbered from 1 to n. 
Each switch is connected to exactly one light that is initially off. 
You walk down the row of switches and toggle every one of them. 
You go back to the beginning, 
and on this second pass, you toggle switches 2, 4, 6, and so on. 
On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. 
You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

PROBLEM
inputs: int
outputs: array
requirements: toggle the switches according to the pattern and return the ones that remain on
questions: mutate?, always int?, half lights?, helper methods?

DATA
switches array: [1, 1, 1]
n int: 3
range: (1..n)
multiples array: [1, 2, 3]
multiples array: [2, 4, 6]
multiples array: [3, 6, 9]
swtiched array: [1, 2, 2]
lights array: [2, 3]

ALGO
create an array of switches in the 'off' position from 1..n
for each value in 1..n
  iterage through switches array
  if switch index is divisible by current value then add one to swtich
end
convert the switched array into an array containing only the lights that are 'on'

PSEUDO
switches = (1..n).to_a

(1..n).each do |n|
  switches.map.with_index |switch, index|
    switches[index] += 1 if (index + 1) % n == 0
end
end
=end

require 'pry'

def lights(n)
  switches = Array.new(n, 1)

  (1..n).each do |n|
    switches.map.with_index do |switch, index|
      switches[index] += 1 if (index + 1) % n == 0
    end
  end

  switches.map!.with_index do |switch, index|
    nil if switch.odd?
    index + 1 if switch.even?
  end

  switches.select { |switch| switch != nil}
end

p lights(5) == [1, 4]
p lights(10) == [1, 4, 9]
