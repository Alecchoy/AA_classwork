class HumanPlayer 
    attr_reader :mark

    def initialize(mark)
        @mark = mark
    end
    
    def get_position
        puts "Player #{mark.to_s}, ebter two numbers representing a position in the format of 'row col' "
        pos = gets.chomp.split(' ').map { |ele| ele.to_i }
        if pos.length != 2
            raise 'error'
        end
        pos
    end
end