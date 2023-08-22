require 'base64'

file_content = File.read("input.txt")

encoded_content = Base64.encode64(file_content)

name = "RiyaKumbhar" 
new_file = "#{name}.txt"

File.open(new_file, "w") do |file|
  file.write(encoded_content)
end