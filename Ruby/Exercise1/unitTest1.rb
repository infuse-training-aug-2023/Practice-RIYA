require 'test/unit'

require_relative 'Exercise1'

 

class TestSerialAverageCalculator < Test::Unit::TestCase

  def test_calculate_average

    calculator = SerialAverageCalculator.new("001", 12.36, 56.78)

    assert_equal 34.57, calculator.calculate_average

  end

 

  def test_formatted_result

    calculator = SerialAverageCalculator.new("002", 10.00, 20.00)

    assert_equal "002-15.00", calculator.formatted_result

  end

end