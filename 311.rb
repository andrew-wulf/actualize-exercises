# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

#Write a Contact class that stores the name, age, and contact_info, where contact_info is a hash that stores any additional information about the contact.


class Contact
    attr_reader :name, :age, :contact_info
    attr_writer :contact_info

    def initialize(name, age)
        @name, @age = name, age
        @contact_info = {}
    end

    def info
        puts "Name: #{@name} | Age: #{@age}"
        for k in @contact_info.keys
            puts "#{k}: #{@contact_info[k]}\n"
        end
    end
end

john = Contact.new('John Smith', 34)
puts john.name, john.age

john.contact_info[:email] = "JohnSmith34@gmail.com"
john.contact_info[:phone_number] = "950-344-2756"

puts john.contact_info[:email]

john.info




# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.


# I'll do more with nested loops next!