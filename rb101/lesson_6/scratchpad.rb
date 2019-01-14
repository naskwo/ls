def alternate_player(current_player)
  # Brute force
  current_player == 'human' ? 'computer' : 'human'
end


p alternate_player('human')
