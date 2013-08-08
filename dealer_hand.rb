require './hand'
require './standard_deck_hashes'
require './ruleset'

class DealerHand < Hand
  def initialize(holecard=[],upcard=[])
    @holecard = [holecard]
    @upcards = [upcard]
    @cards = []
    @cards.push(@upcards)
    @cards.push(@holecard)
    @value = 0
    @upvalue = 0
  end
  def hit(card)
    @upcards.push(card)
  end
  def deal(holecard,upcard)
    self.empty
    @holecard = [holecard]
    @upcards = [upcard]
    @value = 0
    @upvalue = 0
  end
  def get_must_hit
    self.get_value <= $rules.dealer_hit_max
  end
  def get_upcards
    return @upcards
  end
  def get_upvalue
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
  def get_cards
    @cards = @holecard + @upcards
    return @cards
  end
end
