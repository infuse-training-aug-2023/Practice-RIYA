require 'test/unit'
require_relative 'Exercise4'

class TestSports < Test::Unit::TestCase
  def setup
    @arr = ['cricket', 'TT', 'football', 'hockey']
    @sports = Sports.new(@arr)
  end

  def test_skip_sports
    result = @sports.skip_sports(2)
    assert_equal(["2 : football", "3 : hockey"], result)

    result1 = @sports.skip_sports(3)
    assert_equal(["3 : hockey"], result1)
  end
  

  def test_skip_sports_with_invalid_input
    assert_raise(ArgumentError) { @sports.skip_sports(-1) }
    assert_raise(ArgumentError) { @sports.skip_sports(5) }
    assert_raise(ArgumentError) { @sports.skip_sports('invalid') }
  end
end
