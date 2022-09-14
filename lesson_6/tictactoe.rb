# Tic Tac Toe

# rubocop:disable Layout/LineLength
EMPTY = ' '
PLAYER = 'X'
COMPUTER = 'O'
LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
# rubocop:enable Layout/LineLength

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_board_state
  new_board = {}
  (1..9).each { |num| new_board[num] = EMPTY }
  new_board
end

# rubocop:disable Metrics/AbcSize
def display_board(state)
  system('clear')
  puts "Player: #{PLAYER}, Computer: #{COMPUTER}"
  puts "+-----+-----+-----+"
  puts "|     |     |     |"
  puts "|  #{state[1]}  |  #{state[2]}  |  #{state[3]}  |"
  puts "|     |     |     |"
  puts "+-----+-----+-----+"
  puts "|     |     |     |"
  puts "|  #{state[4]}  |  #{state[5]}  |  #{state[6]}  |"
  puts "|     |     |     |"
  puts "+-----+-----+-----+"
  puts "|     |     |     |"
  puts "|  #{state[7]}  |  #{state[8]}  |  #{state[9]}  |"
  puts "|     |     |     |"
  puts "+-----+-----+-----+"
end
# rubocop:enable Metrics/AbcSize

def valid_choices(board_state)
  board_state.keys.select { |num| board_state[num] == EMPTY }
end

def player_turn!(board_state)
  choice = ''

  loop do
    prompt "Choose a square (#{valid_choices(board_state).join(',')}):"
    choice = gets.chomp.to_i
    break if valid_choices(board_state).include?(choice)
    prompt "Invalid choice! Please try again."
  end

  board_state[choice] = PLAYER
end

def computer_turn!(board_state)
  choice = valid_choices(board_state).sample
  board_state[choice] = COMPUTER
end

def winner(board_state)
  LINES.each do |line|
    if board_state.values_at(*line).count(PLAYER) == 3
      return 'Player'
    elsif board_state.values_at(*line).count(COMPUTER) == 3
      return 'Computer'
    end
  end
  nil
end

def board_full?(board_state)
  valid_choices(board_state).empty?
end

def someone_won?(board_state)
  !!winner(board_state)
end

loop do
  # 1 Display the initial empty 3x3 board.
  board = initialize_board_state
  display_board(board)

  loop do
    # 2 Ask the user to mark a square.
    player_turn!(board)
    display_board(board)
    break if someone_won?(board) || board_full?(board)

    # 3 Computer marks a square.
    computer_turn!(board)
    display_board(board)
    break if someone_won?(board) || board_full?(board)
  end

  # 4 If winner, display winner, elseif board is full, display tie.
  if someone_won?(board)
    prompt "#{winner(board)} won!"
  elsif board_full?(board)
    prompt "It's a tie!"
  end

  # 5 Play again?
  prompt "Play again (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing! Goodbye."
