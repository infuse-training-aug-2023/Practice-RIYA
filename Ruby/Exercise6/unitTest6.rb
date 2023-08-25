require 'test/unit'
require 'base64'
require_relative 'Exercise6'

class TestBase64Processor < Test::Unit::TestCase
  def test_read_and_encode
    input_content = "[Hello], [World!]"
    expected_encoded_content = "[#{Base64.strict_encode64('Hello')}], [#{Base64.strict_encode64('World!')}]"

    input_content1 = "My name is [Riya]"
    expected_encoded_content1 = "My name is [#{Base64.strict_encode64('Riya')}]"

    # Create a temporary input file with the input content
    input_file = 'temp_input.txt'
    File.write(input_file, input_content)

    # Create an instance of Base64Processor and call read_and_encode
    output_file = 'temp_output.txt'
    processor = Base64Processor.new(input_file, output_file)
    processor.read_and_encode

    actual_encoded_content = File.read(output_file)

    assert_equal(expected_encoded_content, actual_encoded_content)

  input_file1 = 'temp_input1.txt'
  File.write(input_file1, input_content1)

  output_file1 = 'temp_output1.txt'
  processor = Base64Processor.new(input_file1, output_file1)
  processor.read_and_encode

  actual_encoded_content1 = File.read(output_file1)

  assert_equal(expected_encoded_content1, actual_encoded_content1)
  
  end
end
