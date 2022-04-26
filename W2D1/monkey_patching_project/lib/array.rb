# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        sorted = self.sort
        if self.length >= 1
             return sorted[-1] - sorted[0]
        else
            return nil
        end
    end

    def average
        if self.length >= 1
            total = self.sum
            avg = total / (self.length * 1.0)
            avg
        else
            nil
        end
    end

    def median
        return nil if self.length == 0 
        sorted = self.sort
        
        length = sorted.length
        if length % 2 == 0
         return  (sorted[ sorted.length/2 ] + sorted[(sorted.length - 1 )/ 2 ]) / 2.0
        else
            return sorted[sorted.length / 2]
        end
    end

    def counts
        sorted = self.sort
        hash = Hash.new(0)

        sorted.each do |ele|
                hash[ele] += 1
            
        end

        hash

    end

    def my_count(value)
            count = 0
            self.each do |ele|
                if ele == value
                    count += 1
                end
            end
      count
    end

    def my_index(value)
        self.each.with_index do |ele, i|
            if ele == value
                return i
            end
        end
        return nil
    end

    def my_uniq

        uniq = self & self
    end

    def my_transpose
        sorted = self.sort
        height = sorted.length
        width = sorted[0].length
        new_arr = []

      
        (0...height).map do |row|
            new_row = []
            (0...width).map do |col|
                new_row << self[col][row]
            end
            new_arr << new_row
        end
        new_arr

    end
  
end
