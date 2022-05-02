class HumanPlayer 
    attr_reader :mark

    def initialize(mark)
        @mark = mark
    end
    
    def get_position
        pos = gets.chomp.split(" ").map(&:to_i)
        if pos.length != 2
            raise 'error'
        end
        pos
    end
end