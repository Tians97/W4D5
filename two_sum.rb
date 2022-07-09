# Brute Force
def two_sum?(arr, target)
    (0...arr.length).each do |i|
        (i+1 ...arr.length).each do |j|
            if arr[i] + arr[j] == target
                return true
            end
        end
    end
    return false
end

# arr = [0, 1, 5, 7]
# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false


#Sorting

def okay_two_sum?(arr, target)
    arr = arr.sort
    # i = 0
    # two_sum = false
    # while i < arr.length and two_sum = false
    #     if arr[i] > (target-arr[i]) 
    #         i = arr.length
    #     else
    #         two_sum = bsearch(arr[i+1..-1],t)
    #     i += 1
    # return two_sum

    (0...arr.length).each do |i|
        t = target - arr[i]
        return true if bsearch(arr[i+1..-1],t)
    end
    return false
end

def bsearch (arr, target)
    return nil if arr.length == 0
    middle = arr.length / 2
    left = arr[0...middle]
    right = arr[middle+1 ..-1]
    return true if arr[middle] == target
    if target < arr[middle]
        bsearch(left, target)
    elsif target > arr[middle]
        bsearch(right, target)
    end
end

# arr = [1, 0, 7,19, 5, 273, 8, 2,7]
# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false
# p okay_two_sum?(arr, 12)

# def hash_two_sum?(arr,target)

#     (0...arr.length).each do |i|
#         t = target - arr[i]
#         hash = arr[i+1..-1].tally
#         return true if hash.has_key?(t)
#     end
#     false
# end

# arr = [0, 1, 5, 7]
# p hash_two_sum?(arr, 6) # => should be true
# p hash_two_sum?(arr, 10) # => should be false

def hash_two_sum?(arr,target)
    # hash = arr.tally
    # (0...arr.length).each do |i|
    #     t = target - arr[i]
        
    #     return true if hash.has_key?(t)
    # end
    # hash.each do |key, val|
    #     num = target - key
    #     return true if hash.has_key?(num) && key != num
    # end
    # false


    # hash = arr.tally
    # hash.each do |k, v|
    #     t = target - k
    #     hash.shift if v == 1
    #     return true if hash.has_key?(t)
    # end
    # false

    hash = {}
    arr.each do |x|
        y = target - x
        if hash[y]
            return true
        end

        hash[x] = true
    end
    return false
end

arr = [0, 1, 5, 7]
p hash_two_sum?(arr, 6) # => should be true
p hash_two_sum?(arr, 10) # => should be false
