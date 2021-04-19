module ArrayModule
  refine Array do

    def my_each
        if block_given?
            for i in (0...self.length)
                yield self[i]
            end
        end

        self
    end

    def my_map
        new_arr = []
        if block_given?
            for i in (0...self.length)
                new_arr.push yield self[i]
            end
        end

        new_arr
    end

    def my_select
        new_arr = []
        if block_given?
            for i in (0...self.length)
                new_arr.push self[i] if yield self[i]
            end
        end
        
        new_arr
    end   

  end
end

using ArrayModule

arr = [1,2,3,4]

p arr.my_each { |el| p el }
p arr.my_map { |el|  el + 1 }
p arr.my_select { |el| el.even? }