def window_naive(arr, w)
    current_max_range = 0
    (0...arr.length).each do |i|
        min = arr[i...i+w].min
        max = arr[i...i+w].max
       range = max - min
       current_max_range = range if current_max_range < range
    end 

    current_max_range

end 
# time complexity 0(n^2), space: 0(n)
p window_naive([1, 0, 2, 5, 4, 8], 2)  # 4, 8
p window_naive([1, 0, 2, 5, 4, 8], 3)  # 0, 2, 5
p window_naive([1, 0, 2, 5, 4, 8], 4)  # 2, 5, 4, 8
p window_naive([1, 3, 2, 5, 4, 8], 5)  

