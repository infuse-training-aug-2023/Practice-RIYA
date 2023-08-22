require 'test/unit'
require_relative 'Exercise4'

class TestSports < Test::Unit::TestCase
  def setup
    @arr = ['cricket', 'TT', 'football', 'hockey']
    @sports = Sports.new(@arr)
  end

  def test_skip_sports
    result = @sports.skip_sports(2)
    assert_equal(['football', 'hockey'], result)
  end
end
