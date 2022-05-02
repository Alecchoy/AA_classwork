def my_reject(arr, &prc)
    arr.select { |ele| !prc.call(ele) }
end

def my_one?(array, &prc)
    count = array.count { |ele| prc.call(ele) }

    count == 1
end

def hash_select(hash, &prc)
    new_hash = {}

    hash.each do |k,v|
        if prc.call(k, v)
            new_hash[k] = v
        end
    end

    new_hash

end


def xor_select(array, proc1, proc2)
    array.select { |ele| proc1.call(ele) ^ proc2.call(ele) }

end

def proc_count(value, array)

    array.count { |proc| proc.call(value) == true }

end