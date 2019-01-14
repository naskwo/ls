require 'pry'

SUITS = [:hearts, :diamonds, :clubs, :spades]
VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]
DECK = SUITS.each_with_object({}) do |suit, deck|
  deck[suit] = VALUES.clone # Clone to avoid mutating the same array
end

def shuffle_deck
  instance = DECK.clone
  player = []
  dealer = []
  dealt = 0

  while instance.values.flatten.count > 0
    suit = SUITS.sample
    cards_left_in_suit = instance[suit]

    if cards_left_in_suit.count > 0
      random_card_index = (0..cards_left_in_suit.count).to_a.sample - 1 # OBOE!
      card = { suit => cards_left_in_suit.slice!(random_card_index) }

      if dealt.even?
        player << card
      else
        dealer << card
      end

      dealt += 1
    else
      next
    end
  end
  [player, dealer]
end

def card_value(cards)

end

player_cards, dealer_cards = shuffle_deck

def prompt(message)
  puts ">> #{message}"
end

loop do


  prompt "Play again (y) or quit (q)"
  break if gets.chomp.downcase!.start_with? "q"

end

# p player.count == 26
# p dealer.count == 26
