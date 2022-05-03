
class Player 
    attr_reader :name
    attr_accessor :losses

    def initialize(name)
        @name = name 
        @losses = 0
    end

    def guess
        p "#{name}, please enter a character in the alphabet:"
        gets.chomp
    end

end