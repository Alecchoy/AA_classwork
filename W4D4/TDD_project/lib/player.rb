class Player

    def initialize(name)
        @name = name
    end


    def get_move
        puts 'Please enter one number to represent which disk you would like to remove.'
        puts 'This number is used to select top disk from the stack you would like to choose from [1,2,3].'
        choice = gets.chomp.to_i - 1
    end

    def place_disk
        puts 'Please put a number to represent which column you would like to place the disk on. [1,2,3]'
        decision = gets.chomp.to_i - 1
    end

end
