require 'base64'

class Base64Processor
  def initialize(input_file, output_file, name)
    @input_file = input_file
    @output_file = "#{output_file}"
    @name = name
  end

  def read_and_encode
    content = File.read(@input_file)
    encoded_content = encode_bracketed_string(content)
    write_to_file(encoded_content)
  end

  private

  def encode_bracketed_string(content)
    encoded_content = content.gsub(/\[(.*?)\]/) do |match|
      "[" + Base64.strict_encode64($1) + "]"
    end
    encoded_content
  end

  def write_to_file(content)
    File.open(@output_file, 'w') do |file|
      file.write(content)
    end
  end
end

input_file = 'input.txt'  
output_file = 'RiyaKumbhar.txt'  
my_name = 'RiyaKumbhar'  

processor = Base64Processor.new(input_file, output_file, my_name)
processor.read_and_encode

