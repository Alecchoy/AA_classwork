class Player
    def get_move
        puts "enter a position with coordinates separated with a space '4 7' "
        iput = gets.chomp
        iput_values = iput.split(" ")

        twoinput = []
        twoinput << iput_values[0].to_i
        twoinput << iput_values[1].to_i
        twoinput
    end

end
