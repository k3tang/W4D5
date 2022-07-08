def my_min(list)
    current_min = list[0]

    list.each do |ele|
       current_min = ele if ele < current_min
    end 

    current_min
end 

def my_min_bad(list)
    current_min = list[0]
    list.each do |i|
        list.each do |j|
            if current_min > j 
                current_min = j
            end 
        end 
    end 
    current_min
end 



def larest_cont_subsum_bad(list)
    newarr = []
   (0...list.length).each do |i|
        (i...list.length).each do |j|
            subarr = list[i..j]
            newarr << subarr
        end 
    end 

    newarr.map(&:sum).max
     
end 

def larest_cont_subsum(list)
    largest_sum = 
    current_sum = 

list =[3,4,6,1,-9]
# p my_min(list)
# p my_min_bad(list)
p larest_cont_subsum(list)


