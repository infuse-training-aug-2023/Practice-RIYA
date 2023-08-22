require 'test/unit'
require_relative 'Exercise3'

class TestHashManipulator < Test::Unit::TestCase
  def setup
    @hash_manipulator = HashManipulator.new
  end

  def test_add_key_value_pair
    @hash_manipulator.add_key_value_pair(:name, 'Riya')
    assert_equal({ :name => 'Riya' }, @hash_manipulator.hash)
  end

  def test_select_odd_integer_keys
    @hash_manipulator.add_key_value_pair(1, 'One')
    @hash_manipulator.add_key_value_pair(:name, 'Riya')
    @hash_manipulator.add_key_value_pair(2, 'Two')
    @hash_manipulator.add_key_value_pair(3, 'Three')
    @hash_manipulator.add_key_value_pair(4, 'Four')

    result = @hash_manipulator.select_odd_integer_keys
    expected_result = { 1 => 'One', 3 => 'Three' }

    assert_equal(expected_result, result)
  end

end
