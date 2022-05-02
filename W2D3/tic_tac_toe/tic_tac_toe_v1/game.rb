require './board.rb'
require './human_player.rb'

class Game

    def initialize(player_1,player_2)
        @player_1 = HumanPlayer.new
        @player_2 = HumanPlayer.new
        @board
        @current_player = @player_1
    end

    def switch_turn
        if @current_player == @player_1
            @current_player = @player_2
        else
            @current_player = @player_1
        end

    end

    def play

        while @board.empty_positions?
            @board.print
            @board.place_mark(@current_player.get_position , @current_player.mark)
            if @board.win?(@current_player.mark)
                puts 'victory'
                return
            else
                switch_turn 
            end
        end

        puts "DRAW"
    end

end