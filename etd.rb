# phase 1 First, write a function that compares each element to every other element of the list. Return the element if all other elements in the array are larger. 
#What is the time complexity for this function? O(n^2)
def my_min(arr)
    min = arr.first
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            if min < arr [j]
                min = min
            else
                min = arr[j]
            end
        end
    end
    return min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

# Now rewrite the function to iterate through the list just once while keeping track of the minimum. What is the time complexity?
#O(n)

def my_min(arr)
    min = arr.first
    (0...arr.length-1).each do |i|
        if min >= arr[i+1]
            min = arr[i+1]
        end
    end
    min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5


# phase 1 Write a function that iterates through the array and finds all sub-arrays using nested loops. First make an array to hold all sub-arrays. Then find the sums of each sub-array and return the max.

# def largest_contiguous_subsum(list)
#     arr = []
#     (0...list.length).each do |i|
#         (i...list.length).each do |j|
#             arr << list[i..j]
#         end
#     end
#     return arr.map {|subs| subs.sum}.max
# end

# list = [5, 3, -7]
# p largest_contiguous_subsum(list)
# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list)
# list = [-5, -1, -3]
# p largest_contiguous_subsum(list)


require "byebug"
def largest_contiguous_subsum(list)
    max_sum = list.first
    curr_max = list.first

    (1...list.length).each do |i|

        max_sum = [list[i], list[i]+max_sum].max
        curr_max = [max_sum,curr_max].max
    end

    return curr_max
end


# list = [5, 3, -7]
# p largest_contiguous_subsum(list)
list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list)
list = [-5, -1, -3]
p largest_contiguous_subsum(list)
list = [1, 2, 3,4,-11,6,7,8,9,10]
p largest_contiguous_subsum(list)

