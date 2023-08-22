require 'test/unit'
require 'json'
require_relative 'Exercise5.2'

class TestUserDataProcessor < Test::Unit::TestCase
  def setup
    data = {
      "name": "Nicole Smith",
      "age": 25,
      "salary": 25552.67
    }
    @json_filename = "data.json"
    File.write(@json_filename, JSON.generate(data))
  end

  def teardown
    File.delete(@json_filename) if File.exist?(@json_filename)
  end

  def test_parsed_data
    processor = UserDataProcessor.new(@json_filename)
    expected_parsed_data = {
      "name" => "Nicole Smith",
      "age" => 25,
      "salary" => 25552.67
    }
    assert_equal(expected_parsed_data, processor.parsed_data)
  end

  def test_modified_data
    processor = UserDataProcessor.new(@json_filename)
    expected_modified_data = {
      "first_name": "Nicole",
      "last_name": "Smith",
      "age": 25,
      "salary": 25552.67
    }
    assert_equal(expected_modified_data, processor.modified_data)
  end

end
