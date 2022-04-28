

class Board

    attr_reader :
    
        def initialize
            @grid = Array.new(3)/N{Array.new(3, '_')}
        end

        def[](position) #instance method that is only applicable to instacnce #an instance of board
            row, col = pos
            @grid[row][col]
        end

        def []=(pos, val)
            row, col = pos@grid[row][col] = val
        end

        def place_mark(pos, mark) #self inside an instance method
            self[pos] = mark
    
        def 
    
        def valid?(position) #position = row,col @grid[row][col]
    
            position[0] = row
            position[1] = col
    
            @grid.each do |row, row_idx|
                @row.each do |col, col_idx|
                    if (row_idx < 0 || row_idx > 3 ) 
                        return false
                    elsif col_idx < 0 || col_idx > 3
                        return false
                    else 
                        return true
                    end
                end
            end
    
        end
    
    end
end


b1 = Board.new


