class Board
def initialize
    @board = Array.new(8){Array.new(8)}
    
end



def [](pos)
   row,col = pos
    @board[row][col] 
end

def []= (pos,value)
    row,col = pos
     @board[row][col] = value
end

 def valid?(pos)
    row, col = pos
    if row < 8 &&  row >= 0 && col < 8 && col >= 0 
        return true
    else
        return false

    end
end


 def populate(pos)
    if valid?(pos) && self[pos].nil?
        
        # self[pos]= Piece.new("Knight",pos)

           piece = Piece.new( name,pos)
           self[pos] = piece.name


    end
end

def move_piece(start_pos,end_pos)
    
    if self[start_pos].nil? || !valid?(start_pos) || !valid?(end_pos)
        raise "Error! You cannot move to there sir/mam!"
    else
        self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
    end


    # elsif self[end_pos].nil?
    #     raise "error"
    # else
    #     if valid?(end_pos)
    #     end
    #  end
     
    
end
end













