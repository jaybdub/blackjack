#Define standard blackjack rules
BUST_VALUE = 22
BLACKJACK_VALUE = 21
DEFAULT_DEALER_HIT_MAX = 16
DEFAULT_CAN_DOUBLE_SPLIT = false
DEFAULT_NUM_DECKS = 2
MIN_NUM_DECKS = 1
MAX_NUM_DECKS = 8
MIN_DEALER_HIT_MAX = 1 #this dealers not bad
MAX_DEALER_HIT_MAX = 21 #but i really I want this dealer :P

#For instance rulesetting
class Ruleset
  def initialize(num_decks=DEFAULT_NUM_DECKS, 
                 can_double_split=DEFAULT_CAN_DOUBLE_SPLIT,
                 dealer_hit_max=DEFAULT_DEALER_HIT_MAX)
    @num_decks = num_decks
    @can_double_split = can_double_split
    @dealer_hit_max = dealer_hit_max
  end
  #sets num_decks and returns true if num_decks is in valid range,
  #otherwise, returns false.
  def set_num_decks(num_decks)
    if (MIN_NUM_DECKS..MAX_NUM_DECKS ).member?(num_decks)
      @num_decks = num_decks
      return true
    else
      return false
    end
  end
  def set_double_split(can_double_split)
    @can_double_split = can_double_split
  end
  #same rules for setting number of decks (see above)
  def set_dealer_hit_max(dealer_hit_max)
    if (MIN_DEALER_HIT_MAX..MIN_DEALER_HIT_MAX ).member?(num_decks)
      @num_decks = num_decks
      return true
    else
      return false
    end
  end
  def num_decks
    return @num_decks
  end
  def can_double_split
    return @can_double_split
  end
  def dealer_hit_max
    return @dealer_hit_max
  end
end

#Card rules at bottom because they're chunky
BUST_CARD_VALUES = {
:s_a => 1,
:s_2 => 2,
:s_3 => 3,
:s_4 => 4,
:s_5 => 5,
:s_6 => 6,
:s_7 => 7,
:s_8 => 8,
:s_9 => 9,
:s_10 => 10,
:s_j => 10,
:s_q => 10,
:s_k => 10,

:c_a => 1,
:c_2 => 2,
:c_3 => 3,
:c_4 => 4,
:c_5 => 5,
:c_6 => 6,
:c_7 => 7,
:c_8 => 8,
:c_9 => 9,
:c_10 => 10,
:c_j => 10,
:c_q => 10,
:c_k => 10,

:d_a => 1,
:d_2 => 2,
:d_3 => 3,
:d_4 => 4,
:d_5 => 5,
:d_6 => 6,
:d_7 => 7,
:d_8 => 8,
:d_9 => 9,
:d_10 => 10,
:d_j => 10,
:d_q => 10,
:d_k => 10,

:h_a => 1,
:h_2 => 2,
:h_3 => 3,
:h_4 => 4,
:h_5 => 5,
:h_6 => 6,
:h_7 => 7,
:h_8 => 8,
:h_9 => 9,
:h_10 => 10,
:h_j => 10,
:h_q => 10,
:h_k => 10,
  }
CARD_VALUES = {
:s_a => 11,
:s_2 => 2,
:s_3 => 3,
:s_4 => 4,
:s_5 => 5,
:s_6 => 6,
:s_7 => 7,
:s_8 => 8,
:s_9 => 9,
:s_10 => 10,
:s_j => 10,
:s_q => 10,
:s_k => 10,

:c_a => 11,
:c_2 => 2,
:c_3 => 3,
:c_4 => 4,
:c_5 => 5,
:c_6 => 6,
:c_7 => 7,
:c_8 => 8,
:c_9 => 9,
:c_10 => 10,
:c_j => 10,
:c_q => 10,
:c_k => 10,

:d_a => 11,
:d_2 => 2,
:d_3 => 3,
:d_4 => 4,
:d_5 => 5,
:d_6 => 6,
:d_7 => 7,
:d_8 => 8,
:d_9 => 9,
:d_10 => 10,
:d_j => 10,
:d_q => 10,
:d_k => 10,

:h_a => 11,
:h_2 => 2,
:h_3 => 3,
:h_4 => 4,
:h_5 => 5,
:h_6 => 6,
:h_7 => 7,
:h_8 => 8,
:h_9 => 9,
:h_10 => 10,
:h_j => 10,
:h_q => 10,
:h_k => 10,
  }
