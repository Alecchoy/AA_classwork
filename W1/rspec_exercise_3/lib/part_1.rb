def is_prime?(number)
    return false if number < 2

    (2...number).none? { |i| number % i == 0 }
end

def nth_prime(n)
    count = 0
    num = 1
    while count < n
        num += 1
        if is_prime?(num)
            count += 1
        end
    end

    num

end

def prime_range(min,max)
    new_arr = []
    (min..max).each do |i|
        if is_prime?(i) == true
            new_arr << i
        end
    end

    new_arr

end

