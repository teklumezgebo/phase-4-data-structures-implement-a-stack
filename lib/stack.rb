# your code here
class Stack
    
    def initialize(limit = nil)
        @stack = []
        @limit = limit
    end

    def push(element)
        if @limit
            if @stack.length < @limit
                @stack.push(element)
            else 
                raise StandardError,  "Stack Overflow"
            end
        else
            @stack.push(element)
        end
    end

    def pop
        element = @stack.pop
        element
    end

    def peek
        element = @stack[-1]
        element
    end

    def size
        @stack.length
    end

    def empty?
        @stack.length == 0 ? true : false
    end

    def full?
        @stack.length == @limit ? true : false
    end

    def search(value)
        @stack.each_with_index do |item, index|
            if item == value
                return (@stack.length - 1) - index
            end
        end

       return -1
    end

end