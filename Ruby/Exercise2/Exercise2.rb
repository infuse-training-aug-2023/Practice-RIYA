class ArrayManipulator
    def initialize(arr)
      @arr = arr
    end
  
    def element_at(index)
      @arr[index]
    end
  
    def inclusive_range(start_pos, end_pos)
      @arr[start_pos..end_pos]
    end
  
    def non_inclusive_range(start_pos, end_pos)
      @arr[start_pos...end_pos]
    end
  
    def start_and_length(start_pos, length)
      @arr[start_pos, length]
    end
  end
  