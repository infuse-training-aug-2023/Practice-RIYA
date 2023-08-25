require 'faker'
require 'json'

num_records = (ARGV[0] || 10).to_i

company_name = ENV['COMPANY_NAME'] || 'Default Company'

data = []
num_records.times do
  data << {
    name: Faker::Name.name,
    email: Faker::Internet.email,
    address: Faker::Address.full_address,
    company: company_name
  }
end

json_data = JSON.pretty_generate(data, indent: '  ')

puts json_data
