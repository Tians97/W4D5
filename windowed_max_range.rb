
def windowed_max_range(arr, window_size)
    pairs = []
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            if arr[i..j].length == window_size
                pairs << arr[i..j]
            end
        end
    end
    diffs = []
    pairs.each do |subs|
        min = subs.min
        max = subs.max
        diffs << (max - min)
    end

    return pairs[diffs.index(diffs.max)]
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3)  # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4)  # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5)  # 3, 2, 5, 4, 8



