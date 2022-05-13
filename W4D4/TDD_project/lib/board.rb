require_relative 'player'
class Board
    
    attr_reader :arr1, :arr2, :arr3, :grid
    
    def initialize

        @player1 = Player.new('p1')
        @arr1 = [5,4,3,2,1]
        @arr2 = [] 
        @arr3 = [] 
        @grid = [@arr1,@arr2,@arr3]
        @temp_arr = []
    end

    def grid 
        @grid = grid 
    end

    def remove_disk
        selected_column = @grid[@player1.get_move]
        if selected_column.length >= 1
        selected_disk = selected_column.pop
        elsif 
            selected_disk = selected_column
        end
            
            
        @temp_arr << selected_disk


    end

    def valid_placement?
        @grid.each do |row|
            if row[-1] > @temp_arr[-1]
                return true
            else
                raise 'error'
                return false
            end
        end
    
    end
    def place_disk
            select_column = @grid[@player1.place_disk]
            select_column.push(@temp_arr.pop)

    end

    def print
        puts "-------------------------------"
        @grid.each do |row|
            puts row.join(" | ")
            puts "-------------------------"
        end

    end
    def last_not_filled? 
       if  @grid[2].length != 7
            return true
       else
            return false
       end
    end


    def won?
        if @grid[0].length == 0 && @grid[1].length == 0 && @grid[2] == 5 && @grid[2] == @grid[2].sort
            return true
        else
            return false
        end
    end
end