require './card.rb'
require './ruleset.rb'

class Hand
  def initialize(cards=[])
    @cards = cards# card keys go here
    @value = 0
  end
  def is_blackjack
    #if we have only two cards and the value is 21 we must have a blackjack
    (@cards.length==2)&&(self.get_value==21)
  end
  def is_bust
    get_value >= BUST_VALUE
  end
  def get_value
    @value = 0
    #sum non-bust card values
    @cards.each {|key| @value += CARD_VALUES.fetch(key)}
    #reduce to bust values as long as we're a bust_value (busts must be < card values or this will not reduce)
    @cards.each do |key|
      if (@value > 21)&&(CARD_NAMES.fetch(key)==:ace) #if we're bust and the cards an ace
        val_diff = (CARD_VALUES.fetch(key)-BUST_CARD_VALUES.fetch(key))
        @value -= val_diff
      end
    end
    return @value
  end
  def get_cards
    return @cards
  end
  def empty
    @cards.clear
  end
end
