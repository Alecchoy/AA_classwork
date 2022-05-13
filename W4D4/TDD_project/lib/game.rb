require_relative 'board.rb'
require_relative 'player.rb'
class Game

    def initialize
        @p1 = Player.new('p1')
        @board = Board.new
    end

    def play
     
        while @board.last_not_filled?
            @board.print 
            @board.remove_disk 
            @board.place_disk
                if @board.won?
                    puts "WOW! Player #{p1}, you won!"
                else
                    @board.print 
                end
        end

        
    end






end