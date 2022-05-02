require './board.rb'
require './human_player.rb'

class Game

    def initialize( n, *marks)
        @players = marks.map { |mark| HumanPlayer.new(mark)}
        @board = Board.new(n)
        @current_player = @players.first
    end

    def switch_turn
        @current_player = @players.rotate!.first

    end

    def play

        while @board.empty_positions?
            @board.print
            @board.place_mark(@current_player.get_position , @current_player.mark)
            if @board.win?(@current_player.mark)
                puts "Victory! Player #{@current_player.mark} is the winner!"
                return
            else
                switch_turn 
            end
        end

        puts "DRAW"
    end

end