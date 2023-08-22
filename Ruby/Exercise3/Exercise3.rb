class HashManipulator
    def initialize(initial_hash)
      @hash = initial_hash
    end
  
    def add_entry(key, value)
      @hash[key] = value
    end
  
    def filter_and_transform
      new_hash = {}
      @hash.each do |key, value|
        new_hash[key] = value if key.is_a?(Integer) && key.odd?
      end
      new_hash
    end
  end
  
  