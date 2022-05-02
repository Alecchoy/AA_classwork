class Board
    def initialize
        @grid = Array.new(3){Array.new(3, '_')}
    end

    def [](position)
        row, col = position
        @grid[row][col]
    end
    
    def []=(position, val)
        row, col = position
        @grid[row][col] = val
    end

    def valid?(position)
        row, col = position
        position.all? do |i| 
            i >= 0 && i < @grid.length
        end
    end


    def empty?(position)
        self[position] == '_'
    end

    def place_mark(position,mark)
        unless valid?(position) && empty?(position)
            raise 'error'
        end

        self[position] = mark
    end

    def print
        @grid.each do |row|
            puts row.join(" ")
        end
    end

    def win_row?(mark)
        @grid.any? { |row| row.all?{|ele| ele == mark}}
    end

    def win_col?(mark)
        @grid.transpose.any? { |col| col.all?{|ele| ele == mark}}
    end

    def win_diagonal?(mark)
        left_to_right = @grid.each do |i|
            position = [i,i]
            self[position] == mark
        end

        right_to_left = @grid.each do |i|
            row = i 
            col = @grid.length - 1 - i 
            position = [row,col]
            self[position] == mark 
        end

        left_to_right || right_to_left
    end

    def win?(mark)
        win_col?(mark) || win_row?(mark) || win_diagonal?(mark)
    end

    def empty_positions?

        @grid.any? {|row| row.any?{|ele| ele == '_' } }
    end




end