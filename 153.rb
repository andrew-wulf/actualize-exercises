# QUESTION 1
# Create a hash called cat to store the cat's name, breed, and age. Then print the hash.
# Create a Cat class which stores a cat's name, breed, and age. Print an instance of the cat class.

cat_hash = {'name' => 'Mochi', 'breed' => 'Tabby', 'age' => 10}
pp cat_hash

class Cat
    def initialize(name, breed, age)
        @name = name
        @breed = breed
        @age = age
    end
    def description
        puts "Name: #{@name} | Breed: #{@breed} | Age: #{@age}"
    end
end

cat1, cat2 = Cat.new('Mochi', 'Tabby', 10), Cat.new('Fluffy', 'Siamese', 4)

pp cat1, cat2
cat1.description
cat2.description

# QUESTION 2
# The following code has several mistakes that cause it to crash and not run properly.
# Fix the mistakes to make sure the code runs properly.
class StoreItem
    def initialize(input_name, input_price)
      @name = input_name
      @price = input_price
    end
  end
  
  item = StoreItem.new("chair", 100)
  pp item
  