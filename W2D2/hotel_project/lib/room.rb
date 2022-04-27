class Room
    attr_reader :occupants, :capacity

    def initialize(capacity)
        @capacity = capacity
        @occupants = []
    end

    def full?
       if @occupants.length < @capacity
        return false
       end

       if @occupants.length == @capacity
        return true
       end

    end

    def available_space
        @capacity - @occupants.length
    end

    def add_occupant(person)
        if !self.full?
            @occupants << person
            return true
        else
            return false
        end
    end
  
end