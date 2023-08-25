class Sports
  def initialize(arr)
    @arr = arr
  end

  def skip_sports(del)
    validate_input(del)
    skipped_sports = @arr[del..-1]
    formatted_output = skipped_sports.each_with_index.map { |sport, index| "#{del + index} : #{sport}" }
    formatted_output
  end

  private

  def validate_input(del)
    raise ArgumentError, "Invalid input: #{del}" unless del.is_a?(Integer) && del >= 0 && del < @arr.length
  end
end

