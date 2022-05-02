def partition(array,n)
    left = []
    right = []
    array.each do |ele|
        if ele >= n 
            right << ele
        else
            left << ele
        end
    end

    new_arr = []
    new_arr << left
    new_arr << right

    new_arr
end

def merge(hash1,hash2)
    new_hash = {}

    hash1.each do |k,v|
        new_hash[k] = v
    end

    hash2.each do |k,v|
        new_hash[k] = v
    end

    new_hash


end

def star_vowel(word)
    vowels = "aeiouAEIOU"
    
    new_word = ""

    word.each_char do |char|
        if vowels.include?(char)
            new_word += "*"
        else
            new_word += char
        end
    end

    new_word

end
def censor(sentence, curse_words)

    words = sentence.split(" ")
    new_sent = []

    words.each do |word|
        if curse_words.include?(word.downcase)
            new_sent << star_vowel(word)
        else
            new_sent << word

        end
    end

    new_sent.join(" ")


end

def power_of_two?(num)
    start = 1

    while start < num
        start *= 2
    end

    start == num

end