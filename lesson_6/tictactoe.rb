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
def display_board(state, scores)
  system('clear')
  puts "Player: #{PLAYER}, Computer: #{COMPUTER}"
  puts "Score: #{scores[0]}, Score: #{scores[1]}"
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
    prompt "Choose a square: #{joinor(valid_choices(board_state))}"
    choice = gets.chomp.to_i
    break if valid_choices(board_state).include?(choice)
    prompt "Invalid choice! Please try again."
  end

  board_state[choice] = PLAYER
end

def computer_turn!(brd)
  square = nil
  LINES.each do |line|
    square = find_at_risk_square(line, brd)
    break if square
  end

  if !square
    square = valid_choices(brd).sample
  end

  brd[square] = COMPUTER
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

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def update_score!(winner, scores)
  if winner == 'Player'
    scores[0] += 1
  elsif winner == "Computer"
    scores[1] += 1
  end
end

def find_at_risk_square(line, board)
  if board.values_at(*line).count('PLAYER') == 2
    board.select{|k,v| line.include?(k) && v == 'EMPTY'}.keys.first
  else
    nil
  end
end


scores = [0, 0]
loop do
  # 1 Display the initial empty 3x3 board.
  board = initialize_board_state
  display_board(board, scores)

  loop do
    # 2 Ask the user to mark a square.
    player_turn!(board)
    display_board(board, scores)
    break if someone_won?(board) || board_full?(board)

    # 3 Computer marks a square.
    computer_turn!(board)
    display_board(board, scores)
    break if someone_won?(board) || board_full?(board)
  end

  # 4 If winner, display winner, elseif board is full, display tie.
  if someone_won?(board)
    prompt "#{winner(board)} won!"
  elsif board_full?(board)
    prompt "It's a tie!"
  end

  # 5 Update scores
  update_score!(winner(board), scores)
  display_board(board, scores)

  if scores[0] == 5 || scores[1] == 5
    # 5 Play again?
    scores[0] == 5 ? (prompt "Player is the grand winner!") : (prompt "Computer is the grand winner!")
    prompt "Play again (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
end

prompt "Thanks for playing! Goodbye."
