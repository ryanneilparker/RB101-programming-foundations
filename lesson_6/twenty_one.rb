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

def prompt(msg)
  puts "=> #{msg}"
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
  puts "You have #{player_cards}."
end

def choice_valid?(input)
  %w(hit stay).include?(input.downcase)
end

def busted?(user_cards)
  user_cards.sum > 21
end

def who_won(player, dealer)
  if busted?(player) && busted?(dealer)
    "It's a tie!"
  elsif busted?(player) && !busted?(dealer)
    "You lose..."
  elsif !busted?(player) && busted?(dealer)
    "You win!"
  else
    "You win!" if (player.sum - 21) < (dealer.sum - 21)
    "You lose..." if (dealer.sum - 21) < (player.sum - 21)
  end
end

def score(cards)
  score = 0 
  cards.each do |card|
    if %w(king queen jack).include?(card)
      score += 10
    elsif card == 'ace'
      score +=

# main game loop
loop do
  # initialize game
  cards = initialize_deck
  player_cards = []
  dealer_cards = []
  puts "Welcome to 21!"

  # deal cards
  puts "Dealing..."
  sleep 2
  2.times { deal_card!(cards, player_cards) }
  2.times { deal_card!(cards, dealer_cards) }
  
  # player turn loop
  loop do
    display_dealer_cards(dealer_cards)
    display_player_cards(player_cards)

    # input validation loop
    choice = nil
    loop do
      prompt "Hit or Stay?"
      choice = gets.chomp
      break if choice_valid?(choice)
      puts "That's not a valid answer..."
    end

    break if choice.downcase == "stay" || busted?(player_cards)

    deal_card!(cards, player_cards) if choice.downcase == "hit"
  end

  # dealer turn loop
  loop do
    break if dealer_cards.sum >= 17
    deal_card!(cards, dealer_cards)
    break if busted?(dealer_cards)
  end

  # display winner
  puts who_won(player_cards, dealer_cards)

  # play again?
  prompt "Do you want to play again?"
  answer = gets.chomp

end
