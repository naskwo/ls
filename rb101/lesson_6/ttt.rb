require 'pry'

PLAYERS = [:human,:computer]
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonals

def prompt(msg)
  puts "=> #{msg}"
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

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |     "
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |n| brd[n] == INITIAL_MARKER }
end

def find_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end


def place_piece!(brd, player)
  if player == 'human'
    square = ''
    loop do
      prompt "Choose a square (#{joinor(empty_squares(brd))}):"
      square = gets.chomp.to_i

      break if empty_squares(brd).include? square

      prompt "Sorry, that's not a valid choice."
    end

    brd[square] = PLAYER_MARKER
  else
   square = nil

    # Offense
    WINNING_LINES.each do |line|
      square = find_square(line, brd, COMPUTER_MARKER)
      break if square
    end

    # Defense
    if !square
      WINNING_LINES.each do |line|
        square = find_square(line, brd, PLAYER_MARKER)
        break if square
      end
    end

    # Pick square #5
    square = 5 if brd[5] == ' '

    if !square
      square = empty_squares(brd).sample
    end

    brd[square] = COMPUTER_MARKER

  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    # splat (*) converts line into separate elements
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'computer'
    end
  end
  nil
end

def game_ended?(wins)
  if wins["player"] == 5 || wins["computer"] == 5
    true
  else
    false
  end
end

def alternate_player(current_player)
  # Brute force
  current_player == 'human' ? 'computer' : 'human'
end

wins = {"player" => 0, "computer" => 0}

prompt "Who should start? You (y), Computer (c) or Random (r)?"
input = gets.chomp
start_choice = input.downcase

loop do
  board = initialize_board

  if start_choice == 'y'
    current_player = PLAYERS[0].to_s
  elsif start_choice == 'r'
    current_player = PLAYERS.sample.to_s
  else
    current_player = PLAYERS[1].to_s
  end
  # binding.pry

  loop do
    display_board(board)
    prompt "(Score: you: #{wins['player']}, computer: #{wins['computer']})"
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  # if player_order == 1
  #   # binding.pry
  #   loop do
  #     computer_places_piece! board
  #     break if someone_won?(board) || board_full?(board)

  #     display_board board


  #     player_places_piece! board
  #     break if someone_won?(board) || board_full?(board)
  #   end
  # else
  #   loop do
  #     display_board board
  #     prompt "(Score: you: #{wins['player']}, computer: #{wins['computer']})"

  #     player_places_piece! board
  #     break if someone_won?(board) || board_full?(board)

  #     computer_places_piece! board
  #     break if someone_won?(board) || board_full?(board)
  #   end
  # end

  display_board board

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    wins[detect_winner(board)] += 1
  else
    prompt "It's a tie."
  end

  if game_ended?(wins)
    prompt "Game finished. Final score: you: #{wins['player']}, computer: #{wins['computer']}"
    prompt "Play again? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
    wins = {"player" => 0, "computer" => 0}
    prompt "Who should start? You (y), Computer (c) or Random (r)?"
    input = gets.chomp
    start_choice = input.downcase
  end
end

prompt "Thanks for playing T3! Goodbye."
