class MyQueue 

    def initialize 
        @stack = []
        @size = 0 
    end 
v
    def enqueue(el)
        inner_array.unshift(ele)
        @size += 1
        self
    end 
    
    def dequeue
        self.size -= 1 unless self.size == 0
        inner_array.pop
    end 

    def peek
        inner_array.dup 
    end 
    
    private 
    attr_reader :inner_array
    attr_accessor :size 
end 

