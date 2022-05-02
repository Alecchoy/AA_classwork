def average(num1,num2)
avg = (num1 + num2) / 2.0
avg
end


def average_array(numbers)
    avg = (numbers.sum / (numbers.length * 1.0))
    avg

end

def repeat(string, number)
    new_str = ""
    number.times { new_str += string }
    new_str

end 
def yell(string)
    string.upcase + "!"
end

def alternating_case(string)

    words = string.split(" ")

   new_sent = (0...words.length).map do |i|
        if i % 2 == 0
            words[i].upcase
        else
            words[i].downcase
        end
    end

    new_sent.join(" ")

end