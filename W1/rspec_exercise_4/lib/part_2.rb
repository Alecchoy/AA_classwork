def proper_factors(number)
    new_arr = []

    (1...number).each do |i|
        if number % i == 0
            new_arr << i
        end
    end

    new_arr

end

def aliquot_sum(number)
    newlol = proper_factors(number)

    newlol.sum
end

def perfect_number?(number)
    number == aliquot_sum(number)
end

def ideal_numbers(number)
    count = 0
    num = 1
    new_arr = []
    while count < number
        num += 1
        if perfect_number?(num) 
            count += 1
            new_arr << num
        end
    end

    new_arr


end