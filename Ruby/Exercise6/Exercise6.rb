require 'base64'

class Base64Processor
  def initialize(input_file, output_file)
    @input_file = input_file
    @output_file = output_file
  end

  def read_and_encode
    content = File.read(@input_file)
    encoded_content = encode_bracketed_string(content)
    write_to_file(encoded_content)
  end

  private

  def encode_bracketed_string(content)
    encoded_content = ""
    current_index = 0

    while current_index < content.length
      if content[current_index] == '['
        closing_bracket_index = content.index(']', current_index + 1)
        if closing_bracket_index
          enclosed_content = content[(current_index + 1)...closing_bracket_index]
          encoded_content << "[#{Base64.strict_encode64(enclosed_content)}]"
          current_index = closing_bracket_index + 1
        else
          encoded_content << content[current_index]
          current_index += 1
        end
      else
        encoded_content << content[current_index]
        current_index += 1
      end
    end

    encoded_content
  end

  def write_to_file(content)
    File.write(@output_file, content)
  end
end

input_file = 'input.txt'
output_file = 'RiyaKumbhar.txt'

processor = Base64Processor.new(input_file, output_file)
processor.read_and_encode
