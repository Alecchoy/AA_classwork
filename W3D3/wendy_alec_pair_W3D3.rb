require 'byebug'

# def recur_range(start, finish)
#     return [] if finish <= start
#     prev =  range(start, finish - 1 )
#     prev << finish - 1 
#     return prev 
# end



# def iter_range(start, finish)
#     (start...finish).map {|i| i}
# end

# p iter_range(1,5)
# p (1...5)

# def exp1(b,n)
#     return 1 if n == 0
#     return b * exp1(b, n - 1)
# end

# p exp1(2,0)
# p exp1(2,3)

# def exp2(b, n)
#     return 1 if n == 0
#     if n%2 == 0
#         return exp2(b, n/2)**2
#     else
#         return b*(exp2(b, (n-1)/2)**2)
#     end 
# end 
# p exp1(2,0)
# p exp1(2,3)
# p exp1(2,4)


# def dup(array)
#     new_arr = []
#     array.each do |ele|
#         if ele.is_a?Array 
#             new_arr << dup(ele)
#         else
#             new_arr << ele 
#         end
#     end
#     return new_arr 
# end

# def fib(n)
#     return [] if n == 0 
#     return [0] if n == 1
#     return [0,1] if n == 2
#     lol = fib(n-1)
#     return lol<< lol[-1] + lol[-2]
# end

# def binary_search(array, target)
#     return nil if array.length == 0
#     mid = array.length / 2
#     left = array[0...mid]
#     right = array[(mid+1)..-1]
#     return mid if array[mid] == target
#     if array[mid] < target
#         stack = binary_search(right, target)
#         if stack
#             return binary_search(right, target) + mid + 1
#         else
#             return nil
#         end
#     else
#         return binary_search(left, target)
#     end 
# end 


def merge(left, right)

    # left.each_with_index do |ele, idx|
    #     if le

    i = 0
    j = 0
    new_arr = []
    while i < left.length || j < right.length
        if left[i] == nil
            new_arr << right[j]
            j += 1
        elsif right[j] == nil
            new_arr << left[i]
            i += 1
        elsif left[i] < right[j] 
            new_arr << left[i]
            i += 1
        else
            new_arr << right[j]
            j += 1
        end
    end
    return new_arr
end
def merge_sort(arr)
    # debugger
    return [] if arr.length == 0 
    return arr if arr.length == 1
    
    if arr.length % 2 == 0
        mid = (arr.length / 2) - 1
    else
        mid = (arr.length / 2)
    end
    left = arr[0..mid]
    right = arr[mid + 1..-1]
    merge(merge_sort(left), merge_sort(right))
end

# p merge_sort([12,7,1,14,9,20,16])

def subsets(arr)
    new_arr = []
    if arr.length == 0
        new_arr<< []
        return new_arr
    end
    arr.each_with_index do |ele,i|
        temp_arr = arr[0...i] + arr[i+1..-1]
        new_arr += subsets(temp_arr)
    end
    new_arr<< arr 
    return new_arr.uniq
end 
# p subsets([]) # => [[]]
# p subsets([1]) # => [[], [1]]
# p subsets([1, 2]) # => [[], [1], [2], [1, 2]]
# p subsets([1, 2, 3])
# # => [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]

def permutations(arr)
    # debugger
    new_arr = []
    if arr.length == 0
        new_arr<< []
        return new_arr
    end
    if arr.length == 1
        return [arr]
    end 
    item = arr[-1]
    prev = permutations(arr[0...-1])
    prev.each do |subarr|
        new_arr<< [subarr[0]] + [item] + [subarr[-1]]
        new_arr<< [item] + subarr
        new_arr<< subarr + [item]
    end
    return new_arr 
end


p permutations([1, 2, 3]) # => [[1, 2, 3], [1, 3, 2],
                        #     [2, 1, 3], [2, 3, 1],
                        #     [3, 1, 2], [3, 2, 1]]