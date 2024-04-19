# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.


# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.




#Write a Product class that stores the name, price, and metadata, where metadata is a hash that stores additional information about the product.

#challenge: add products to a market, and implement a selection sort (find min or max value and place it appropriately, then leave that position out of the "sorting" in future iterations).

#I kind of figured out a selection sort, but not quite. It worked, but instead of swapping positions within one array, I just took the max value out of the array entirely and put it into the new one.
#I looked up an example of the sort to implement it the way it's there now.


class Product
    attr_reader :name, :price, :info
    attr_writer :price, :info

    def initialize(name, price)
        @name, @price, @info = name, price, {}
    end

    def display
        price = @price.to_s
        x = price.index('.')
        if price[x..].length == 2
            price += '0'
        elsif
            price[x..].length > 3
            price = price[x + 3]
        end
        puts "#{@name} | $#{price} -- #{@info["category"]}, ID# #{@info['id']}"
    end
end


def word_sort(champion, challenger)
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    champion, challenger = champion.downcase.tr(' ', ''), challenger.downcase.tr(' ', '')

    left, right = 0, 0
    i = 0

    while left == right
        left, right = alphabet.index(champion[i]), alphabet.index(challenger[i])

        i +=1
        if i >= champion.length || i >= challenger.length
            break
        end
    end
    return left < right
end

class Market
    attr_reader :products
    attr_writer :products

    def initialize
        grocery_items = [["Milk", "Dairy"], ["Eggs", "Dairy"], ["Bread", "Bakery"], ["Apples", "Produce"], ["Bananas", "Produce"], ["Chicken", "Meat"], ["Rice", "Grains"], ["Pasta", "Grains"], ["Tomatoes", "Produce"], ["Potatoes", "Produce"], ["Carrots", "Produce"], ["Spinach", "Produce"], ["Cheese", "Dairy"], ["Yogurt", "Dairy"], ["Orange Juice", "Beverages"], ["Ground Beef", "Meat"], ["Lettuce", "Produce"], ["Onions", "Produce"], ["Bell Peppers", "Produce"], ["Cereal", "Grains"], ["Peanut Butter", "Pantry"], ["Jelly", "Pantry"], ["Frozen Pizza", "Frozen Foods"], ["Ice Cream", "Frozen Foods"], ["Bacon", "Meat"], ["Sausages", "Meat"], ["Cucumbers", "Produce"], ["Avocados", "Produce"], ["Tortilla Chips", "Snacks"], ["Salsa", "Condiments"], ["Green Beans", "Produce"], ["Broccoli", "Produce"], ["Cauliflower", "Produce"], ["Salad Dressing", "Condiments"], ["Frozen Vegetables", "Frozen Foods"], ["Frozen Fruits", "Frozen Foods"], ["Oatmeal", "Grains"], ["Pancake Mix", "Pantry"], ["Maple Syrup", "Pantry"], ["Honey", "Pantry"], ["Mustard", "Condiments"], ["Ketchup", "Condiments"], ["Mayonnaise", "Condiments"], ["Bread Rolls", "Bakery"], ["Flour", "Baking"], ["Sugar", "Baking"], ["Tea", "Beverages"], ["Coffee", "Beverages"], ["Olive Oil", "Pantry"], ["Vinegar", "Pantry"]]

        suffixes, ids = [0.99, 0.49, 0.50, 0.95, 0.78], []
        @products = []

        grocery_items.each do |item|
            while true
                id = rand(81111..98999)
                if not ids.include?(id)
                    ids.push(id)
                    break
                end
            end
            price = rand(2..59) + suffixes[rand(5)]

            prod = Product.new(item[0], price)
            prod.info["category"] = item[1]
            prod.info["id"] = id

            @products.push(prod)
        end
    end

    def display
        puts "\n\n\n\n"
        puts "--------- Market Products ---------"
        for product in products
            product.display
        end
        puts "-------------------------------"
        puts 'commands: "name" | "price" | "categories" | "id" | "exit"'
    end

    def sort(comm)
        products, output, comm = @products, [], comm.downcase

        if ['id', 'price', 'categories', 'name'].include?(comm)
            output = []

            j = 0
            while j < products.length
                i, min_i = j + 1, j

                while i < products.length
                    curr, lowest = products[i], products[min_i]

                    if comm == 'id' || comm == 'price'
                        if comm == 'id'
                            val, to_compare = curr.info['id'], lowest.info['id']
                        else
                            val, to_compare = curr.price, lowest.price
                        end

                        if val < to_compare
                            min_i = i
                        end
                    else
                        if comm == 'name'
                            val, to_compare = curr.name, lowest.name
                        else
                            val, to_compare = curr.info['category'], lowest.info['category']
                        end

                        if not word_sort(to_compare, val)
                            min_i = i
                        end
                    end
                    i +=1
                end
                products[j], products[min_i] = products[min_i], products[j]
                j +=1
            end
            self.display
        end
    end
end


market = Market.new


puts "\nWelcome to the market!"
puts "Enter given commands to sort the list of products."
puts "\npress enter to continue."

gets

market.display
while true
    comm = gets.chomp
    if comm.downcase == 'exit'
        break
    else
        market.sort(comm)
    end
end




