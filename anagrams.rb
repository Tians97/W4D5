def first_anagram?(str_1,str_2)
    arr_1 = str_1.split("")
    all_paris = permutation(arr_1).map {|subs| subs.join("")}
    return all_paris.include?(str_2)
end

def permutation(arr)
    return [[]] if arr.empty?
        ele = arr.pop
        perms = permutation(arr)
        result = []
        perms.each do |perm|
            (0..perm.length).each do |i|
                result << perm[0...i] + [ele] + perm[i..-1]
            end
        end
    return result
end

# p first_anagram?("gizmo", "sally")
# p first_anagram?("elvis", "lives")


def second_anagram?(str_1, str_2)
    str_1.each_char.with_index do |char, i|
        if str_2.include?(char)
            index = str_2.index(char)
            str_2[index] = ""
        end
    end
    return str_2.length == 0
end

# p second_anagram?("gizmo", "sally")
# p second_anagram?("elvis", "lives")

def third_anagram?(str_1,str_2)
    arr1 = str_1.split("")
    arr2 = str_2.split("")
    arr1.sort == arr2.sort
end

# p third_anagram?("gizmo", "sally")
# p third_anagram?("elvis", "lives")


def fourth_anagram?(str_1,str_2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)

    str_1.each_char do |char|
        hash1[char] += 1
    end

    str_2.each_char do |char|
        hash2[char] += 1
    end

    hash1 == hash2
    
end

p fourth_anagram?("gizmo", "sally")
p fourth_anagram?("elvis", "lives")
