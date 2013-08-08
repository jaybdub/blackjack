require './ruleset.rb'
require './standard_deck_hashes.rb'
require './card.rb'
require './player_hand.rb'
require './dealer_hand.rb'
require './stack.rb'
require './cardset.rb'

class Dealer
  def initialize(num_decks=2)
    @cardset = Cardset.new(num_decks)
    @stack = Stack.new
    @stack.fill(@cardset.get_cards)
    @stack.shuffle
    @dealer_hand = DealerHand.new
    @player_hand = PlayerHand.new(:player1)
  end
  def reset_game
    @dealer_hand.empty
    @player_hand.empty
    @stack.fill(@cardset.get_cards)
    @stack.shuffle
  end
  def shuffle_stack
    @stack.shuffle
  end
  def get_stack
    @stack
  end
  def get_dealer_hand
    @dealer_hand
  end
  def get_player_hand
    @player_hand
  end
  def deal_dealer
    @dealer_hand.deal(@stack.pull_card,@stack.pull_card)
  end
  def deal_player
    @player_hand.deal(@stack.pull_card,@stack.pull_card)
  end
  def hit_dealer
    @dealer_hand.hit(@stack.pull_card)
  end
  def hit_player
    @player_hand.hit(@stack.pull_card)
  end
end
