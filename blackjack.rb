#should contain rules /operation
require './ruleset.rb'
require './standard_deck_hashes.rb'
require './card.rb'
require './player_hand.rb'
require './dealer_hand.rb'
require './stack.rb'
require './cardset.rb'
require './dealer.rb'
require './player.rb'


class Blackjack
  def initialize
    @cardset = Cardset.new(1).freeze
    @drawpile = Stack.new
    @drawpile.fill(@cardset.cards)
    @drawpile.shuffle
    @discardpile = Stack.new
    @dealer = Dealer.new
    @player = Player.new(:player1)
  end
  def show_player_hands
    puts
    @player.hands.each do |hand|
      print "player hand:  "
      self.show_cards(hand.cards)
      puts " "
    end
  end
  def show_dealer_hand
    puts
    print "dealer hand:  "
    show_cards(@dealer.hand.upcards)
    puts " | *~*~*~holecard~*~*~* |"
  end
  def show_cards(cards)
      cards.each {|key| print " | "+CARD_NAMES.fetch(key).to_s.capitalize+" of "+CARD_SUITS.fetch(key).to_s.capitalize+" | "}
  end
  def deal
    self.deal_player
    self.deal_dealer
  end
  def deal_player
    @player.add_to_hand(@drawpile.pull_card,0)
    @player.add_to_hand(@drawpile.pull_card,0)
  end
  def deal_dealer
    @dealer.add_holecard(@drawpile.pull_card)
    @dealer.add_upcard(@drawpile.pull_card)
  end
  def hit_player_hand(hand_key)
    @player.add_to_hand(@drawpile.pull_card,hand_key)
  end
  def hit_dealer
    @dealer.add_upcard(@drawpile.pull_card)
  end
end
