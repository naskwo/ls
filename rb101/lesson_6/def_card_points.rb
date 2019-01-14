require 'pry'

SUITS = [ :hearts, :diamonds, :clubs, :spades ]
VALUES = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace ]
POINTS = { 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7,
          8 => 8, 9 => 9, 10 => 10, jack: 10, queen: 10, king: 10, ace: 11 }
DECK = SUITS.each_with_object({}) do |suit, deck|
  deck[suit] = VALUES.clone # Clone to avoid mutating the same array
end
SEPARATOR = "\n" + ( "*" * 60 )+ "\n\n"

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

def get_card(cards)
  cards.shift
end

def card_values(cards)
  cards.each_with_object([]) { |card,arr| arr << card.values }.flatten
end

def card_points(cards)
  sum = 0
  # Sort cards so :ace is last
  cards.sort! { |a,b| POINTS[a] <=> POINTS[b] }
  cards.each do |card|
    if card == :ace
      sum += ( sum < 12 ) ? 11 : 1
    else
      sum += POINTS[card]
    end
  end
  sum
end

player_cards, dealer_cards = shuffle_deck
player = []
dealer = []

player << get_card(player_cards)
player << get_card(player_cards)
player << get_card(player_cards)

p player
p player_values = card_values(player)
p card_points(player_values)
