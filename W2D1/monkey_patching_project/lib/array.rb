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
        sorted = self.sort

        if sorted.length % 2 != 0
            sorted[ sorted.length / 2 ]
        else
            

    end
  
end
