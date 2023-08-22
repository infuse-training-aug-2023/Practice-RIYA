class Sports
    def initialize(arr)
      @arr = arr
    end
  
    def skip_sports(del)
      @arr[del..-1]
    end
  end
  