def brute_sums?(arr, target_sum)
    arr.each.with_index do |ele1, i|
        arr.each.with_index do |ele2, j|
            return true if (ele1 + ele2 == target_sum) && (j > i)
        end 
    end 
    false
end 

# arr = [0, 1, 5, 7]
# target_sum = 10

# Time complexity: 0(n^2), 0(1)
# p brute_sums?(arr, target_sum)

def okay_sums?(arr, target_sum)
    sortedarray = arr.sort
    lo = 0
    hi = sortedarray.length - 1
    while (lo < hi)
        sum = arr[lo] + arr[hi]

        if sum == target_sum
            return true
        elsif sum < target_sum
            lo += 1
        else
            hi -= 1
        end
    end
    return false
end # Time Complexity: O(n log n) Space Complexity: O(n) only because we saved a new sorted array 
arr = [0, 1, 5, 7]
p okay_sums?(arr, 6) # => should be true
p okay_sums?(arr, 10) # => should be false

def two_sum(arr, target_sum)
    newhash = Hash.new
    arr.each do |ele|
        if !newhash.has_key?(target_sum - ele)
            newhash[ele] = true
        else
            return true
        end
    end
    return false
end # Time Complexity: O(n) Space Complexity: O(n)

arr = [0, 1, 5, 7]
p two_sum(arr, 6) # => should be true
p two_sum(arr, 10) # => should be false