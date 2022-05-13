class Piece
    attr_reader :color
    attr_accessor :pos
    def initialize(color, board, pos)
        raise "Invalid Color" unless [:white, :black].include?(color)
        raise "Invalid pos" if board.valid_pos?(pos) == false

        @color = color
        @pos = pos
        @board = board
    end

    def symbol
       raise  NotImplementedError
    end

    def empty?
        return false
    end

    
end