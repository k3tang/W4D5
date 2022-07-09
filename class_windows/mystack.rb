class MyStack 
   
    def initialize 
        @stack = [] 
        @size = 0
    end 

    def push(el) 
        @stack << el 
        size += 1
    end 

    def pop 
        @stack.pop
        @size -= 1 unless @size == 0 
    end 

    def peek 
        @stack[0]
    end 

    def empty? 
        @size == 0
    end 

    def inspect
        "#<stack:#{self.object_id}"
    end 
end 