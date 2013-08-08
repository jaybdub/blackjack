require './standard_deck_hashes'

class Stack
  def initialize
    @cards = []
  end
  def fill(cards)
    @cards = cards
  end
  def shuffle
    @cards.shuffle!
  end
  def pull_card
    @cards.pop
  end
  def pull_n_cards(n)
    @cards.pop(n)
  end
  def empty?
    @cards.empty?
  end
  def cards
    return @cards
  end
end
