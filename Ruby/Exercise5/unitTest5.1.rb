require 'test/unit'
require 'json'
require_relative 'Exercise5.1'

class TestUserData < Test::Unit::TestCase
  def test_to_hash
    user = UserData.new("Nicole Smith", 25, 25552.67)
    expected_hash = {
      name: "Nicole Smith",
      age: 25,
      salary: 25552.67
    }
    assert_equal(expected_hash, user.to_hash)
  end
end
