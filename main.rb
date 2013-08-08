require './ruleset.rb'
require './standard_deck_hashes.rb'
require './card.rb'
require './player_hand.rb'
require './dealer_hand.rb'
require './stack.rb'
require './cardset.rb'
require './dealer.rb'
require './application.rb'
require './blackjack.rb'

$app = Application.new
$rules = Ruleset.new

@blackjack = Blackjack.new
@blackjack.play
