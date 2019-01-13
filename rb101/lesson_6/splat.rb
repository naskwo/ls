brd = {1 => 'O', 2 => 'O', 3 => ' ', 4 => 'O', 5 => ' ', 6 => ' ', 7 => ' ', 8 => ' ', 9 => 'X'}

line = [1,2,3]

# p brd.values_at(*line).count("O")

p brd.select {|k,v| line.include?(k) && v == ' '}.keys.first

