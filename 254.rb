# QUESTION 1
# Start with the Person class defined below.
# Add a method called email that returns the person's email address as a string. 
#     The person's email has the format: "firstname.lastname@gmail.com".
# Add a method called info that returns a string that describes the person's hobbies 
#     in a user-friendly format. Make sure it works no matter how many hobbies a person has! 
#     (You'll need to use a loop!)
class Person
    def initialize(first_name, last_name, hair_color, hobbies)
      @first_name = first_name
      @last_name = last_name
      @hair_color = hair_color
      @hobbies = hobbies
    end

    def email
        "#{@first_name}.#{@last_name}@gmail.com"
    end

    def info
        i, x, = 0, 0
        
        last_name = @last_name + "'"
        if last_name[-2] != 's'
            last_name += 's'
        end

        lines = ["#{@first_name} #{last_name} hobbies include "]

        while i < @hobbies.length
            hobby = @hobbies[i]
            if i == @hobbies.length - 1
                lines[x] += "and #{hobby}."
            else
                lines[x] += "#{hobby}, "
            end
            if lines[x].length > 70
                lines.push("")
                x += 1
            end
            i+=1
        end
        return lines.join("\n")
    end
  end
  
  person = Person.new("Bob", "Jones", "pink", ["basketball", "chess", "phone tag"])
  person2 = Person.new("James", "Matthew", "black", ["basketball", "basketball", "basketball", "chess", "phone tag", "chess", "phone tag", "chess", "phone tag", "chess", "phone tag", "basketball", "chess", "phone tag", "basketball", "chess", "phone tag", "basketball", "chess", "phone tag", "basketball", "chess", "phone tag", "basketball", "chess", "phone tag"])
  puts ("--------")
  puts person.info
  puts person.email
  puts ("--------\n")
  puts person2.info
  puts ("--------")

  # QUESTION 2
  # The code below crashes when it is run.
  # First explain what the error message means, 
  # then fix the code by modifying only the line marked # FIX THIS LINE.
  # (This one is quite tricky!)
  class Product
    attr_reader :name, :price, :description
  
    def initialize(options_hash)
      @name = options_hash["name"]
      @price = options_hash["price"]
      @description = options_hash["description"]
    end
  end
  
  product = Product.new({'name' => "Table", 'price' => 500, 'description' => "Solid oak"}) # FIX THIS LINE
  puts "The product's name is #{product.name}."
  
  #Product's initialize method expects one variable, a hash from which the instance variables will be gathered.