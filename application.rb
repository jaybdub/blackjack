#typo-gogo finding plugin
require './blackjack.rb'
class Application
  def menu
    self.show_menu
    choice = gets.strip.downcase
    case choice
    when "n"
      blackjack = Blackjack.new
      blackjack.play
    else
      
    end
  end
  def show_menu
    self.clear_screen
    puts "(n)ew game"
    puts "(q)uit"
  end
  def clear_screen
    puts "\e[H\e[2J"
  end
end
