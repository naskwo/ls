PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
INITIAL_MARKER = ' '
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonals

brd = {1 => 'O', 2 => 'O', 3 => ' ', 4 => 'O', 5 => ' ', 6 => ' ', 7 => ' ', 8 => ' ', 9 => 'X'}

# def find_at_risk_square(line, board)
#   if board.values_at(*line).count('X') == 2
#     board.select{|k,v| line.include?(k) && v == ' '}.keys.first
#   else
#     nil
#   end
# end


def find_third_in_a_row(line, board)
  if board.values_at(*line).count(COMPUTER_MARKER) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

p find_third_in_a_row([1,2,3],brd)
