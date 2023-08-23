require 'test/unit'
require_relative 'Exercise3'

class TestHashManipulator < Test::Unit::TestCase
  def setup
    @hash_manipulator = HashManipulator.new
  end

  def test_add_key_value_pair
    @hash_manipulator.add_key_value_pair(:name, 'John')
    assert_equal({ :name => 'John' }, @hash_manipulator.hash)
  end

  def test_update_hash
    @hash_manipulator.add_key_value_pair(98765, 25)
    @hash_manipulator.add_key_value_pair(:name, 'Riya')
    @hash_manipulator.add_key_value_pair(22434, 64)
    @hash_manipulator.add_key_value_pair(3, 'Three')
    @hash_manipulator.add_key_value_pair(44567, 34 )

    @hash_manipulator.update_hash

    expected_result = { 98765 => 25, :name => 'Riya', 543121 => 100, 3 => 'Three', 44567 => 34}
    assert_equal(expected_result, @hash_manipulator.hash)
  end
end

