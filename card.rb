require './standard_deck_hashes.rb'

class Card
  def initialize(key=:s_a)
    @key = key
    @suit = fetch_suit(@key)
    @name = fetch_name(@key)
  end
  def get_key
    return @key
  end
  def set_key(key)
    @key = key
    @suit = fetch_suit(@key)
    @name = fetch_name(@key) 
  end
  def get_suit
    return @suit
  end
  def get_name
    return @name
  end
  private
    def fetch_suit(key)
      begin
        CARD_SUITS.fetch(@key)
      rescue
        raise "card not found in hash"
      end
    end
    def fetch_name(key)
      begin
        CARD_NAMES.fetch(@key)
      rescue
        raise "card not found in hash"
      end
    end
end
