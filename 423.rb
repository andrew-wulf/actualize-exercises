# QUESTION 1
# The following code uses the faker Ruby library.
# First read the library documentation: https://github.com/faker-ruby/faker 
# Then write comments next to each line explaining what you think the code is doing.
require 'faker'                              # external library must be explicitly called before use.

fake_data = []                               # make an array called fake_data.
100.times do                                 # repeat 100 times:
  name = Faker::Name.name                    # calling this method generates a random name.
  email = Faker::Internet.email(name: name)  # calling this method generates a random email.
  fake_data << { name: name, email: email }  # put the fake name and email in a hash, and add the hash to the fake_data array.
end

fake_data.each do |item|                     # for each hash in the array:
  puts "Fake Name: #{item[:name]}"           # print out the name and email value.
  puts "Fake Email: #{item[:email]}"
  puts "---"
end
