class HashManipulator
  attr_reader :hash

  def initialize
    @hash = {}
  end

  def add_key_value_pair(key, value)
    @hash[key] = value
  end

  def update_hash
    @hash[543121] = 100
    @hash.delete_if { |key, _| key.is_a?(Integer) && key.even? }
  end
end



 
  
  