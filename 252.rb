# QUESTION 1
# Write a method that takes in four numbers and returns the numbers added together.
# Then run the method and print the result. 
# (Note: you do not need to make a custom class for this exercise, just a method)

def add(*args)
    return *args.sum
end

puts add(30, 20, 23, 17)

# QUESTION 2
# Write a class called Shoe that stores attributes for name, color, and price.
# Then make an instance of a shoe and print out the details using `pp`.
# (Note: for this problem, just make the initialize method in the class, no other methods needed)


class Shoe
    def initialize(name: nil, color: nil, price: nil)
        @name, @color, @price = name, color, price
    end
end

shoe = Shoe.new(price: 99.99, name: 'nike running shoe', color: 'black')
pp shoe