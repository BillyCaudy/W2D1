require_relative 'board.rb'
require_relative 'display.rb'

class Game
    def initialize
        @baord = Board.new
        @display = Display.new
        @players = {}
        @current_player = :white        
    end

    def play
        
    end
    
    def notify_players
    end

    def swap_turn!
    end

end