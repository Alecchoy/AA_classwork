class Array 

    def my_uniq
       self.uniq
    end

    def two_sum
        new_arr = []
        self.each.with_index do |ele1, idx1|
            self.each.with_index do |ele2, idx2|
                if idx2 > idx1 && ele1 + ele2 == 0
                    new_arr <<[idx1,idx2]
                end
            end
        end

        new_arr
    end

    def my_transpose
        self.transpose
    end

    def stock_picker
        return [] if self.length == 0
        combos = []
        copy = self.dup
        copy.each.with_index do |ele1, buyday|
            copy.each.with_index do |ele2, sellday|
                if sellday > buyday 
                    combos << [ele1,ele2]
                end
            end
        end


        new_arr = combos.sort_by do |subarr|
            buydayprice = subarr[0]
            selldayprice = subarr[1]
            selldayprice - buydayprice
        end

        highest = new_arr[-1]

        days = []

        highest.each do |i|
            if copy.include?(i)
                days << copy.index(i)
            end
        end

        days




            
    end



end 