require './hand'
require './standard_deck_hashes'
require './ruleset'

class DealerHand < Hand
  def initialize
    @holecard
    @upcards = []
    @cards = []
    @value = 0
    @upvalue = 0
  end
  def add_upcard(card)
    @upcards.push(card)
  end
  def set_holecard(card)
    @holecard = card
  end
  def update_cards
    @cards.clear
    @cards.push(@upcards)
    @cards.push(@holecard)
  end
  def upvalue
    @upvalue = 0
    #sum non-bust card values
    @upcards.each {|key| @upvalue += CARD_VALUES.fetch(key)}
    #reduce to bust values as long as we're a bust_value (busts must be < card values or this will not reduce)
    @cards.each do |key|
      if (@value > 21)&&(CARD_NAMES.fetch(key)==:ace) #if we're bust and the cards an ace
        val_diff = (CARD_VALUES.fetch(key)-BUST_CARD_VALUES.fetch(key))
        @upvalue -= val_diff
      end
    end
    return @upvalue
  end
  def cards
    return @cards
  end
  def holecard
    return @holecard
  end
  def upcards
    return @upcards
  end
end
