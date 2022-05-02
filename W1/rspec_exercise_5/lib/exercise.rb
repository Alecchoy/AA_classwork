def zip(*arrays)

    length = arrays.first.length
    (0...length).map do |i|
        arrays.map do |array|
            array[i]
        end

    end

end

def prizz_proc(array, proc1, proc2)
    new_arr = []

    array.each do |ele|
        if proc1.call(ele) ^ proc2.call(ele)
            new_arr << ele
        end
    end

    new_arr

end

def zany_zip(*arrays)

    sorted = arrays.sort_by { |array| array.length }
    length = sorted[-1].length

    (0...length).map do |i|
        arrays.map do |array|
            array[i]
        end
    end



end

def maximum(array, &prc)
    max = array.first
    array.each do |ele|
        if prc.call(ele) >= prc.call(max)
            max = ele
        end
    end

    max

end

def my_group_by(array, &prc)
    new_hash = Hash.new { |h,k| h[k] = [] }
    array.each do |ele|
        new_hash[prc.call(ele)] << ele
    end

    new_hash

end

def max_tie_breaker(array, proc, &prc)
    max = array.first

    

    array.each do |ele|
        if prc.call(ele) > prc.call(max)
            max = ele
        elsif prc.call(ele) == prc.call(max) && proc.call(ele) > proc.call(max)
            max = ele
        end
    end

    max

end

def changed_word(word)
    idcs = vowel_idcs(word)

    word[idcs.first..idcs.last]
end



def vowel_idcs(word)
    idcs = []
    vowels = "aeiou"

    word.each_char.with_index do |char, i|
        if vowels.include?(char)
            idcs << i 
        end
    end

    idcs
end

def silly_syllables(sentence)

    words = sentence.split(" ")
    new_words = words.map do |word|
        if vowel_idcs(word).length < 2
            word
        else
            changed_word(word)
        end
    end

    new_words.join(" ")
end