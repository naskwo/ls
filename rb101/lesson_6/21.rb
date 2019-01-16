SUITS =   [:hearts, :diamonds, :clubs, :spades]
VALUES =  [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]
POINTS =  { 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7,
            8 => 8, 9 => 9, 10 => 10, :jack => 10,
            :queen => 10, :king => 10, :ace => 11 }
SEPARATOR = "\n" + ("*" * 60) + "\n\n"

def new_deck
  SUITS.product(VALUES).shuffle
end

def deal_card(deck)
  deck.pop
end

def card_values(cards)
  arr = []
  cards.each do |card|
    arr << card[1]
  end
  arr
end

def card_points(card_values)
  sum = 0
  # Sort cards so :ace is last
  card_values.sort! { |a, b| POINTS[a] <=> POINTS[b] }
  # Special scoring rule for aces
  card_values.each do |card|
    sum +=  if card == :ace
              sum < 12 ? 11 : 1
            else
              POINTS[card]
            end
  end
  sum
end

def winner?(card_values)
  card_points(card_values) == 21
end

def busted?(card_values)
  card_points(card_values) > 21
end

def prompt(message)
  puts message
end

def card_names(cards)
  arr = []
  cards.each { |card| arr << "#{card[1]} of #{card[0].to_s}" }
  arr
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

def output_status(dealer_values, player_values)
  prompt ""
  prompt "Dealer has: #{joinor(card_names(dealer_values), ', ', 'and')}"
  prompt "You have:   #{joinor(card_names(player_values), ', ', 'and')}"
  prompt ""
end

# Master loop
loop do
  # Setup
  deck = new_deck
  game_ended = false
  quit_game = false
  player_action = nil

  player = []
  dealer = []
  dealer << deal_card(deck)
  player << deal_card(deck)
  player << deal_card(deck) # player starts with 2 cards

  system 'clear'
  prompt SEPARATOR
  prompt "Welcome to Nate's 21!"
  prompt SEPARATOR

  # Player's turn
  loop do
    player_values = card_values(player)
    output_status(dealer, player)
    prompt ""

    if busted? player_values
      prompt "You're BUSTED! Dealer wins."
      game_ended = true
      break
    end

    if winner? player_values
      prompt "You have 21. YOU WIN!"
      game_ended = true
      break
    end

    loop do # input validation loop
      prompt ">> Will you hit (h) or stay (s)?"
      player_action = gets.chomp.downcase[0]
      break if ['h', 's'].include? player_action
    end

    if player_action == 'h'
      system 'clear'
      prompt "Hit me! You got a new card..."
      player << deal_card(deck)
    end

    if player_action == 's'
      system 'clear'
      break
    end
  end

  # Dealer's turn
  unless game_ended
    loop do
      system 'clear'
      dealer << deal_card(deck)

      dealer_values = card_values(dealer)
      player_values = card_values(player)

      dealer_points = card_points(dealer_values) # TODO: refactor memoization
      player_points = card_points(player_values)

      prompt ">> Dealer takes a card."
      output_status(dealer, player)

      if busted? dealer_values
        prompt "Dealer is BUSTED. YOU WIN!"
        break
      end

      if winner? dealer_values
        prompt "DEALER HAS 21! Dealer wins."
        break
      end

      if dealer_points >= 17
        prompt ">> Dealer stays."
        if dealer_points < player_points
          prompt "You have a higher score (#{player_points}) than " \
                 "the dealer (#{dealer_points}). YOU WIN!"
        elsif dealer_points == player_points
          prompt "You and the dealer each have #{player_points} points." \
                 "It's a tie!"
        else
          prompt "The dealer has a higher score (#{dealer_points}) than " \
                  "you (#{player_points}). Dealer wins."
        end
        break
      end
    end
  end

  prompt SEPARATOR
  loop do
    prompt "Play again (y) or quit (q)"

    choice = gets.chomp.downcase[0]

    next unless ['y', 'q'].include? choice

    quit_game = (choice == 'q')

    break
  end
  break if quit_game
end

prompt "Thank you for playing. Goodbye."
