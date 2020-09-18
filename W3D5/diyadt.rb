class Stack
    def initialize
      @arr = []
    end

    def push(el)
      @arr << el
      @arr
    end

    def pop
        @arr.pop    
    end

    def peek
      @arr[-1]
    end
  end


class Queue
    
    def initialize 
        @arr1 = []
    end

    def enqueue(el)
        @arr1.push(el)
        @arr1
    end

    def dequeue
        @arr1.shift
    end
    
    def peek
        @arr1[0]
    end

end


class Map

    def initialize 
        @arr3 = []
    end

    def set(key, value)
       @arr3.each do |subarr|
        if subarr[0] == key
            subarr[1] = value
        else  
            @arr3 << [key, value]
       end


      
    end
    @arr3
    end

end
