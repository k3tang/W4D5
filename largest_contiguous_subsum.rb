=begin

three variables: negsum
possum

startpos = 0

Iterate through each element of the array i

=end

def largest_cont_sum(list)
start_pos = 0
current_sum = 0
max_sum = list[0]

    (0...list.length).each do |i|
        current_sum += list[i]
        if current_sum > max_sum
            max_sum = current_sum
        elsif current_sum < 0
            start_pos = i
            current_sum = 0
        end 
    end 
    return max_sum
end 

list = [2,3,-6,7,-6,7]
slis = [-5,-1,-3]
xlis = [5,3,-7]
p largest_cont_sum(list)
p largest_cont_sum(xlis)