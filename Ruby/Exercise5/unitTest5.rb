require 'test/unit'
require 'json'
require_relative 'Exercise5'


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

class TestUserDataProcessor < Test::Unit::TestCase
  def test_create_new_file
    original_data = {
      "name" => "Nicole Smith",
      "age" => 25,
      "salary" => 25552.67
    }
    File.stubs(:read).with("data.json").returns(JSON.generate(original_data))

    processor = UserDataProcessor.new("data.json")
    processor.create_new_file

    # Assertions
    assert(File.exist?("Nicole_2023-08-23T12-00-00.json"), "New file should have been created")
    
    new_file_content = File.read("Nicole_2023-08-23T12-00-00.json")
    expected_content = JSON.pretty_generate({
      "first_name" => "Nicole",
      "last_name" => "Smith",
      "age" => 25,
      "salary" => 25552.67
    })
    assert_equal(expected_content, new_file_content, "File content does not match expected content")
  end
end
