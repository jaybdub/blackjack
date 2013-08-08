require './dealer_hand.rb'
require './stack'
class Dealer
  def initialize
    @hand = DealerHand.new
  end
  def add_holecard(card)
    @hand.set_holecard(card)
  end
  def add_upcard(card)
    @hand.add_upcard(card)
  end
  def hand
    return @hand
  end
end
