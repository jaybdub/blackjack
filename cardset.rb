#handles card allocation
require './standard_deck_hashes'

class Cardset
  def initialize(num_decks=2)
    @cards = CARD_NAMES.keys*num_decks #defines set of cards distrubited amongst play
  end
  def get_cards
    return @cards
  end
end
