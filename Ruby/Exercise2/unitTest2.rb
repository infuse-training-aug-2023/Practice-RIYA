require 'test/unit'
require_relative 'Exercise2'  

class TestArrayManipulator < Test::Unit::TestCase
  def setup
    @arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    @manipulator = ArrayManipulator.new(@arr)
  end

  def test_check_element_at
    assert_equal 4, @manipulator.element_at(3)
  end

  def test_inclusive_range
    assert_equal [1, 2, 3, 4, 5, 6, 7], @manipulator.inclusive_range(0, 6)
  end

  def test_exclusive_range
    assert_equal [2, 3, 4, 5, 6], @manipulator.non_inclusive_range(1, 6)
  end

  def test_start_and_length
    assert_equal [2, 3, 4, 5], @manipulator.start_and_length(1, 4)
  end
end
