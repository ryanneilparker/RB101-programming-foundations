=begin
Take everything you've learned so far and build a mortgage calculator (or car payment calculator -- it's the same thing).

You'll need three pieces of information:

the loan amount
the Annual Percentage Rate (APR)
the loan duration
From the above, you'll need to calculate the following things:

monthly interest rate
loan duration in months
monthly payment
=end

# Import prompt messages
require 'yaml'
MESSAGES = YAML.load_file('messages.yml')

# Define prompt method
def prompt(message)
  puts "=>" + " " + message
end

# Define number validation method
def valid_number?(number)
  integer?(number) || float?(number)
end

# Define integer validation method
def integer?(number)
  number.to_i.to_s == number
end

# Define float validation method
def float?(number)
  number.to_f.to_s == number
end

# Define years to months conversion method
def to_months(years)
  years.to_f * 12
end

# Define APR to MPR conversion method
def to_mpr(apr)
  apr.to_f / 100 / 12
end

# Define monthly payment calculation method
def payment(principle, apr, duration)
  principle.to_f * (to_mpr(apr) / (1 - (1 + to_mpr(apr))**(-to_months(duration))))
end

# Start program
prompt(MESSAGES['welcome'])

loop do
  # Get principle amount in dollars
  principle = ""
  loop do
    prompt(MESSAGES['principle'])
    principle = gets.chomp
    break if valid_number?(principle)
    prompt(MESSAGES['error'])
  end
  # Get APR as a whole number and convert to percentage
  apr = ""
  loop do
    prompt(MESSAGES['apr'])
    apr = gets.chomp
    break if valid_number?(apr)
    prompt(MESSAGES['error'])
  end
  # Get loan duration in years
  duration_years = ""
  loop do
    prompt(MESSAGES['duration'])
    duration_years = gets.chomp
    break if valid_number?(duration_years)
    prompt(MESSAGES['error'])
  end

  # Display calculating message
  prompt(MESSAGES['calculating'])
  sleep(2)

  # Calculate monthly payment
  amount = payment(principle, apr, duration_years)

  # Display results
  puts "\n Your monthly payment is $#{amount.round(2)} for #{to_months(duration_years)} months! \n\n"

  # Start over again?
  prompt(MESSAGES['restart'])
  answer = gets.chomp
  break if answer.downcase.start_with?("n")
end