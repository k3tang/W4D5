def brute_sums?(arr, target_sum)
    arr.each.with_index do |ele1, i|
        arr.each.with_index do |ele2, j|
            return true if (ele1 + ele2 == target_sum) && (j > i)
        end 
    end 
    false
end 

arr = [0, 1, 5, 7]
target_sum = 10

# Time complexity: 0(n^2), 0(1)
p brute_sums?(arr, target_sum)

def okay_sums?(arr, target_sum)
    sorted.bsearch {|ele|}
end 
p okay_sums?(arr,target_sum)


