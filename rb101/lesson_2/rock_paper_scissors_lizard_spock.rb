# require 'pry'
GAME_OPTIONS = {  "r" => "rock",
                  "p" => "paper",
                  "sc" => "scissors",
                  "l" => "lizard",
                  "sp" => "spock" }

WINNING_COMBOS = {  rock:     [:scissors, :lizard],
                    paper:    [:rock, :spock],
                    scissors: [:lizard, :paper],
                    lizard:   [:paper, :spock],
                    spock:    [:scissors, :rock] }

def update_score(p1, p2, score)
  if win?(p1, p2)
    score[:p1] += 1
  elsif win?(p2, p1)
    score[:p2] += 1
  end
  score
end

def win?(p1, p2)
  WINNING_COMBOS.fetch(p1.to_sym).include?(p2.to_sym)
end

def display_results(player, computer)
  if win?(player, computer)
    puts "You WON!"
  elsif win?(computer, player)
    puts "The computer won."
  else
    puts "It's a tie."
  end
end

def prompt(message)
  puts ">> #{message}"
end

score = { p1: 0, p2: 0 }

loop do
  choice = ''

  loop do
    prompt "Choose one: #{GAME_OPTIONS.values.join(', ')}."
    prompt "(Enter #{GAME_OPTIONS.keys.join(', ')})"
    input = gets.chomp.downcase.slice(0, 2)

    if GAME_OPTIONS[input]
      choice = GAME_OPTIONS[input]
      break
    else
      prompt "That's not a valid choice."
    end
  end

  computer_choice = GAME_OPTIONS.values.sample

  puts "You: #{choice.upcase}, computer: #{computer_choice.upcase}."

  score = update_score(choice, computer_choice, score)
  display_results(choice, computer_choice)

  puts " SCORE ".center(40, ' * ')
  puts "You #{score[:p1]}, computer #{score[:p2]}\n\n"

  if score[:p1] < 5 && score[:p2] < 5
    puts " NEXT ROUND ".center(40, ' * ')
    next
  else
    puts " FINAL SCORE ".center(40, ' * ')
    puts "You #{score[:p1]}, computer #{score[:p2]}\n\n"
    puts " END OF GAME ".center(40, ' * ')
    prompt "Play again? (y)es to play again"

    if gets.chomp.downcase.start_with?("y")
      puts " NEW GAME ".center(40, ' ! ')
      score = { p1: 0, p2: 0 }
      next
    else
      break
    end
  end
end
