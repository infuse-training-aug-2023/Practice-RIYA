require 'time'
require 'json'

class UserDataProcessor
  attr_reader :parsed_data, :modified_data

  def initialize(filename)
    file_content = File.read(filename)
    @parsed_data = JSON.parse(file_content)
    parse_full_name
    modify_data
  end

  def create_new_file
    timestamp = Time.now.utc.strftime("%Y-%m-%dT%H-%M-%S")
    new_file = "#{@first_name}_#{timestamp}.json"

    File.open(new_file, "w") do |file|
      file.write(JSON.pretty_generate(@modified_data))
    end
  end

  private

  def parse_full_name
    full_name = @parsed_data["name"].split
    @first_name = full_name[0]
    @last_name = full_name[1]
  end

  def modify_data
    @modified_data = {
      "first_name": @first_name,
      "last_name": @last_name,
      "age": @parsed_data["age"],
      "salary": @parsed_data["salary"]
    }
  end
end

user_data_processor = UserDataProcessor.new("data.json")
user_data_processor.create_new_file
