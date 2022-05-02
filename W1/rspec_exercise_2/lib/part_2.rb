def palindrome?(string)
    reversed = ""
    i = string.length - 1
    while i >= 0
        reversed += string[i]
        i -= 1
    end

    reversed == string
end

def substrings(string)
    new_arr = []
    (0...string.length).each do |idx1|
        (idx1...string.length).each do |idx2|
          
            new_arr << string[idx1..idx2]
    
        end
    end

    new_arr


end

def palindrome_substrings(string)
    
    substrings(string).select {|subarr| palindrome?(subarr) && subarr.length > 1}

end
