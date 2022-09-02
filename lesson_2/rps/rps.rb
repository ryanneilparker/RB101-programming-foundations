VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'rock' && (second == 'lizard' || second == 'scissors')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("You lost!")
  else
    prompt("It's a tie!")
  end
end

score = [0, 0]
def update_score(score, player, computer)
  if win?(player, computer)
    score[0] += 1
  elsif win?(computer, player)
    score[1] += 1
  end
end

def winner?(score)
  if score[0] == 3
    prompt("You are the grand winner! Congratulations!")
  elsif score[1] == 3
    prompt("The computer is the grand winner! Sorry!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}.")
    choice = gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Thats not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts "You chose #{choice} and the computer chose #{computer_choice}."

  display_results(choice, computer_choice)

  update_score(score, choice, computer_choice)

  prompt("You currently have #{score[0]} points and the computer has #{score[1]}.")

  winner?(score)
  break if score[0] == 3 || score[1] == 3

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Hope you had fun! Goodbye.")
