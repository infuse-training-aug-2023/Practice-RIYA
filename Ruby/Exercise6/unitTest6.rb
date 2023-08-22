require 'test/unit'
require 'base64'
require_relative 'Exercise6.2'

class TestBase64Processor < Test::Unit::TestCase
  def setup
    @input_filename = 'input_test.txt'
    @output_filename = 'output_test.txt'
    @name = 'RiyaKumbhar'

    @processor = Base64Processor.new(@input_filename, @output_filename, @name)
  end

  def teardown
    File.delete(@input_filename) if File.exist?(@input_filename)
    File.delete(@output_filename) if File.exist?(@output_filename)
  end

  def test_encode_bracketed_string
    input_content = 'Originally, [John Doe] was a sham [string]...'
    expected_output = 'Originally, [Sm9obiBEb2U=] was a sham [c3RyaW5n]...'

    encoded_content = @processor.send(:encode_bracketed_string, input_content)
    assert_equal(expected_output, encoded_content)
  end

  def test_read_and_encode
    input_content = 'Originally, [John Doe] was a sham [string]...'
    expected_encoded_content = 'Originally, [Sm9obiBEb2U=] was a sham [c3RyaW5n]...'

    File.write(@input_filename, input_content)

    @processor.read_and_encode
    output_content = File.read(@output_filename)

    assert_equal(expected_encoded_content, output_content)
  end

end

