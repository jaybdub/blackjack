require './blackjack.rb'

@blackjack = Blackjack.new
@blackjack.deal
@blackjack.show_player_hands
@blackjack.show_dealer_hand
@blackjack.hit_player_hand(0)
@blackjack.show_player_hands
@blackjack.show_dealer_hand
