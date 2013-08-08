require './hand.rb'
require './card.rb'
require './ruleset.rb'

class PlayerHand < Hand
  def initialize(player_key)
    @cards = []# card keys go here
    @value = 0
    @is_split = false
    @player_key = player_key
  end
  def add_card(card)
    @cards.push(card)
  end
  def set_is_split(is_split)
    @is_split = is_split
  end
  def can_split
    #check if the rules allow it, and if we have exactly 2 cards
    if (  (DEFAULT_CAN_DOUBLE_SPLIT || !@is_a_split) && (@cards.length==2)  ) 
        #check if card values are identical (logic performed inside to avoid indexing errors & its faster :D)
        return CARD_VALUES.fetch(@cards[0])==CARD_VALUES.fetch(@cards[1])
    end
    return false #default to can't split
  end
  
end
