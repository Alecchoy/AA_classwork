require "byebug"

class Board
    attr_reader :size
  def initialize(n)
    @grid = Array.new(n){Array.new(n, :N)}
    @size = n * n
  end

  def [](position)
   row,col = position

   @grid[row][col]

  end 
  
  def []=(position, value )

    row = position[0]
    col = position[1]
    
    @grid[row][col] = value

  end

  def num_ships
    count = 0
    @grid.each do |subarr|
        subarr.each do |ele|
            if ele == :S
            count += 1
            end
        end
    end
    count
  end

  def attack(position)
    row = position[0]
    col = position[1]

    if self[position] == :S
        self[position] = :H
        puts 'you sunk my battle ship'
        return true
    else
        self[position] = :X
        return false
    end
  end

  def place_random_ships
    percent = @size / 4 

    while num_ships < percent
        row = rand(0...@grid.length)
        col = rand(0...@grid.length)
        @grid[row][col] = :S
    end

  end

  def hidden_ships_grid
        @grid.map do |subarr|
            subarr.map do |ele|
                if ele == :S
                    ele = :N
                else
                    ele = ele
                end
            end
        end
  end


    def self.print_grid(grid)

        grid.each do |row|
            puts row.join(" ")
        end
    end

    def cheat
        Board.print_grid(@grid)
    end

    def print
        Board.print_grid(hidden_ships_grid)
    end
  
end
