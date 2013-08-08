#should contain rules /operation
require './ruleset.rb'
require './standard_deck_hashes.rb'
require './card.rb'
require './player_hand.rb'
require './dealer_hand.rb'
require './stack.rb'
require './cardset.rb'
require './dealer.rb'
require './application.rb'

class Blackjack
  def initialize
    @dealer = Dealer.new(4)
  end
  def play
    new_game
  end
  private
    def setup_menu
      $app.clear_screen
      show_setup_menu
      choice = gets.strip.downcase
    end
    def new_game
      @dealer.reset_game
      puts "Welcome to black jack"
      puts ""
      puts "hit enter to deal"
      gets
      @dealer.deal_player
      @dealer.deal_dealer
      
    end
    def show_setup_menu
      puts "this is blackjack"
    end
end
