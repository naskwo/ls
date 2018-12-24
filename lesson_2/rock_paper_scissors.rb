GAME_OPTIONS = %w(rock paper scissors)

def win?(p1, p2)
  (p1 == 'rock' && p2 == 'scissors') ||
    (p1 == 'paper' && p2 == 'rock') ||
    (p1 == 'scissors' && p2 == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt "You WON!"
  elsif win?(computer, player)
    prompt "The computer won."
  else
    prompt "It's a tie."
  end
end

def prompt(message)
  puts ">> #{message}"
end

loop do
  choice = ''

  loop do
    prompt "Choose one: #{GAME_OPTIONS.join(', ')}"
    choice = gets.chomp.downcase

    if GAME_OPTIONS.include? choice
      break
    else
      prompt "That's not a valid choice"
    end
  end

  computer_choice = GAME_OPTIONS.sample

  puts "You: #{choice.upcase}, computer: #{computer_choice.upcase}."

  display_results(choice, computer_choice)

  puts "Play again? (y)es to play again"

  break unless gets.chomp.downcase.start_with?("y")
end
