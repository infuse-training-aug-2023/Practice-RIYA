class ArrayManipulator
    def initialize(arr)
      @arr = arr
    end
  
    def element_at(index)
      return nil if index < 0 || index >= @arr.length
  
      @arr[index]
    end
  
    def inclusive_range(start_pos, end_pos)
      return [] if start_pos < 0 || end_pos >= @arr.length || start_pos > end_pos
  
      @arr[start_pos..end_pos]
    end
  
    def non_inclusive_range(start_pos, end_pos)
      return [] if start_pos < 0 || end_pos >= @arr.length || start_pos >= end_pos
  
      @arr[start_pos...end_pos]
    end
  
    def start_and_length(start_pos, length)
      return [] if start_pos < 0 || start_pos >= @arr.length || length <= 0 || start_pos + length > @arr.length
  
      @arr[start_pos, length]
    end
  end