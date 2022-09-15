=begin
1. Initialize deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.
=end
require 'pry'

ROYALS = %w(jack queen king)
TIE = "It's a tie..."
LOSE = "You lose..."
WIN = "You win!"

def prompt(prompt)
  puts "=> #{prompt}"
end

def message(msg)
  puts "\n >> #{msg} \n\n"
end

def initialize_deck
  deck =[]
  suit = ['ace', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king']
  4.times do |_|
    deck << suit
  end
  deck.flatten
end

def deal_card!(deck, user_cards)
  user_cards << deck.shuffle!.pop
end

def display_dealer_cards(dealer_cards)
  puts "Dealer has a #{dealer_cards[0]} and an unknown card."
end

def display_player_cards(player_cards)
  puts "You have #{player_cards.join(', ')}."
end

def choice_valid?(input)
  %w(hit stay).include?(input.downcase)
end

def busted?(user_cards)
  score(user_cards) > 21
end

def who_won(player, dealer)
  if score(player) > score(dealer) && !busted?(player)
    WIN
  elsif score(player) < 21 && busted?(dealer)
    WIN
  elsif score(player) == score(dealer)
    TIE
  elsif busted?(player) && busted?(dealer)
    TIE
  elsif score(dealer) > score(player) && !busted?(dealer)
    LOSE
  elsif score(dealer) < 21 && busted?(player)
    LOSE
  end
end

def score(cards)
  score = 0

  cards.each do |card|
    if ROYALS.include?(card)
      score += 10
    elsif card.is_a? Integer
      score += card
    end
  end

  if cards.any?('ace') && score > 10
    score += cards.count('ace')
  elsif cards.any?('ace') && score <= 10
    score += 11
  end

  score
end

puts "Welcome to 21!"
# main game loop
loop do
  # initialize game
  cards = initialize_deck
  player_cards = []
  dealer_cards = []

  # deal cards
  message("Dealing...")
  sleep 2
  2.times { deal_card!(cards, player_cards) }
  2.times { deal_card!(cards, dealer_cards) }
  display_dealer_cards(dealer_cards)

  # player turn loop
  loop do
    display_player_cards(player_cards)

    # input validation loop
    choice = nil
    loop do
      prompt "Hit or Stay?"
      choice = gets.chomp
      break if choice_valid?(choice)
      message("That's not a valid answer...")
    end

    break if choice.downcase == "stay" || busted?(player_cards)

    deal_card!(cards, player_cards) if choice.downcase == "hit"
  end

  # dealer turn loop
  loop do
    break if score(dealer_cards) > 17
    deal_card!(cards, dealer_cards)
    break if busted?(dealer_cards)
  end

  # display winner
  message(who_won(player_cards, dealer_cards))
  sleep 0.5
  message("Dealer had #{dealer_cards.join(', ')}
          worth #{score(dealer_cards)} points.")
  sleep 0.5
  message("You had #{player_cards.join(', ')}
          worth #{score(player_cards)} points.")
  sleep 0.5

  # play again?
  prompt "Do you want to play again (y/n)?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

puts "Thanks for playing 21! See you next time!"
