=begin
Write a method that implements a miniature stack-and-register-based programming language that has the following commands:

n Place a value n in the "register". Do not modify the stack.
PUSH Push the register value on to the stack. Leave the value in the register.
ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP Remove the topmost item from the stack and place in register
PRINT Print the register value
All operations are integer operations (which is only important with DIV and MOD).

Programs will be supplied to your language method via a string passed in as an argument. Your program may assume that all programs are correct programs; that is, they won't do anything like try to pop a non-existent value from the stack, and they won't contain unknown tokens.

You should initialize the register to 0.

PROBLEM
inputs: string
outputs: print
requirements: implement a simple stack-and-register programming language
questions: loops?, user intput or method?

DATA
register int: 4
stack array: [0, 1, 2]
command string: '5 ADD 5 PRINT'

ALGO
create helper methods for each operation
split input string into commands
loop through input string and execute commands

PSEUDO
register = 0
stack  = []

commands = string.split(' ')

commands.each do |command|
  case command
  when 'ADD'
    ADD(stack, register)
  when 'PUSH'
    PUSH(stack, register)
  when 'SUB'
    SUB(stack, register)
  when 'DIV'
    ...
=end

require 'pry'

def minilang(string)
  register = 0
  stack = []
  commands = string.split(' ')

  commands.each do |command|
    #binding.pry
    case command
    when 'PRINT'
      puts register
    when 'PUSH'
      stack.push(register)
    when 'ADD'
      register = register + stack.pop
    when 'SUB'
      register = register - stack.pop
    when 'MULT'
      register = register * stack.pop
    when 'DIV'
      register = register / stack.pop
    when 'MOD'
      register = register % stack.pop
    when 'POP'
      register = stack.pop
    else
      register = command.to_i
    end
  end
end

# minilang('PRINT')
# minilang('5 PUSH 3 MULT PRINT')
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# minilang('5 PUSH POP PRINT')
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')



