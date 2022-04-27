require_relative "room"

class Hotel
    def initialize(name, rooms)
        @name = name
        @rooms = {}

        rooms.each do |room, cap|
            @rooms[room] = Room.new(cap)
        end

    end

    def name
        new_name = []
       @name.split(" ").each.with_index do |word,i|
        new_name << word[0].upcase + word[1..-1].downcase
       end

       new_name.join(" ")

    end

    def rooms
        @rooms
    end

    def room_exists?(room_name)
        if @rooms.keys.include?(room_name)
            return true
        else
            return false
        end
    end

    def check_in(person, room)

        if self.room_exists?(room) 
            if @rooms[room].add_occupant(person)
                puts 'check in successful'
            else
                puts 'sorry, room is full'
            end
        else
            puts 'sorry, room does not exist'
        end
    end

    def has_vacancy?
        @rooms.values.any? do |room|
             room.available_space > 0
        end

    end

    def list_rooms

        @rooms.each do |room_name, room| 
            puts "#{room_name} : #{room.available_space}"
        end
        
    end
  
   

  
end
