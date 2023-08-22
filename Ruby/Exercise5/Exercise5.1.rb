require 'json'

class UserData
  def initialize(name, age, salary)
    @name = name
    @age = age
    @salary = salary
  end

  def to_hash
    {
      name: @name,
      age: @age,
      salary: @salary
    }
  end
end

user = UserData.new("Nicole Smith", 25, 25552.67)

File.open("data.json", "w") do |file|
  file.write(JSON.generate(user.to_hash))
end
