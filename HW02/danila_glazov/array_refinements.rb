module ArrayRefinements
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
