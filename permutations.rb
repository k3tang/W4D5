def permutations(str)
    return [str] if str.length == 1

    newarray = []

    str.each_char.with_index do |char, i|
        subpermutations = permutations(str[0...i] + str[i+1..-1])

        newarray += subpermutations.map {|subpermute| char + subpermute}
    end

    newarray
end

# p permutations("abcd")

def first_anagram?(str1, str2)
    return permutations(str1).include?(str2)
end  # Space and Time Compolexity: O(n!)

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(str1, str2)
    return false if str1.length != str2.length
    str1copy = str1.dup
    str2copy = str2.dup

    while(str1copy.length > 0)
        if(!str2copy.include?(str1copy[0]))
            return false
        else
            str1copy = str1copy[1..-1]
        end
    end
    true
end # Time Complexity : O(n²), Space: O(n) (only because we duped)

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true
p second_anagram?("eliv", "lives")    #=> true
