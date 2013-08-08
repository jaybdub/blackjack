require './hand.rb'
require './card.rb'
require './ruleset.rb'

class PlayerHand < Hand
  def initialize(player_key, is_a_split=false)
    @cards = []# card keys go here
    @value = 0
    @is_a_split = is_a_split
    @player_key = player_key
  end
  def player_key
    return @player_key
  end
  def can_split
    #check if the rules allow it, and if we have exactly 2 cards
    if (  ($rules.can_double_split || !@is_a_split) && (@cards.length==2)  ) 
        #check if card values are identical (logic performed inside to avoid indexing errors & its faster :D)
        return CARD_VALUES.fetch(@cards[0])==CARD_VALUES.fetch(@cards[1])
    end
    return false #default to can't split
  end
  def deal(card1,card2)
    self.empty
    @cards.push(card1)
    @cards.push(card2)
  end
  def hit(card)
    @cards.push(card)
  end
  
end
