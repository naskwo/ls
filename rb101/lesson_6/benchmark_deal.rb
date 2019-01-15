SUITS =   [:hearts, :diamonds, :clubs, :spades]
VALUES =  [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]
POINTS =  { 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7,
            8 => 8, 9 => 9, 10 => 10, :jack => 10,
            :queen => 10, :king => 10, :ace => 11 }
SEPARATOR = "\n" + ("*" * 60) + "\n\n"

def new_deck
  SUITS.each_with_object({}) do |suit, deck|
    deck[suit] = VALUES.clone
  end
end

def deal_cards
  instance = new_deck
  player = [] # Note that this method can be simplified to return one array
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

player,dealer = deal_cards

p player.shift
p dealer.shift
