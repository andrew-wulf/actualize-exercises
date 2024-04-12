# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.


#Write a ShoppingCart class that stores an array of items with methods to add an item, remove an item, and display all the items.


class ShoppingCart
    def initialize
        @items = []
        puts "New shopping cart created."
    end

    def add_item
        puts "Enter an Item name:"
        name = gets.chomp
        puts "Enter the cost:"
        cost = gets.chomp.to_f
             
            
        puts "Item added."

        @items.push([name, cost])
    end

    def remove_item
        #doing this a silly way because I gotta work with what I can remember
        
        puts "Which item do you wish to remove?"
        name = gets.chomp
        new_cart = []
        removed = "Item"

        for item in @items
            if item[0] != name
                new_cart.push(item)
            else
                removed = item[0]
            end
        end
        
        if new_cart == @items
            new_cart = []
            puts "Item not found, try entering an ID:"
            id, i = gets.chomp.to_i, 0
            while i < @items.length
                if i != id - 1
                    new_cart.push(@items[i])
                else
                    removed = @items[i][0]
                end
                i+=1
            end
        end

        if new_cart != @items
            puts "#{removed} removed from cart."
            @items = new_cart
        else
            puts "Item not found -- no items removed."
        end
    end
    
    def display_items
        puts "Your current shopping cart:\n"
        i, total = 1, 0
        for item in @items
            puts "Item #{i}: #{item[0]} | Price: $#{item[1].round(2)}"
            total += item[1]
            i +=1
        end
        puts "Total cost: $#{total.round(2)} | Cost per item: $#{(total / @items.length).round(2)}"
    end

end

def demonstration
    cart = ShoppingCart.new()

    puts "Commands: \nadd = add item \nremove = remove item \ndisplay = display items \nend = stop program"

    
    while true
        puts "\n"
        command = gets.chomp
        if command == 'end'
            break
        elsif command == 'add'
            cart.add_item

        elsif command == 'remove'
            cart.remove_item

        elsif command == 'display'
            cart.display_items
        end
    end
end


demonstration()

# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.

# I forgot the syntax of gets.chomp (I used gets.chop, haha) and had to look it up.
# I also would have wanted to use error handling and one of the built-in array methods to remove items, 
# I definitely want to get familiar with those.

# pushing changes through the terminal seems to require an access token, 
# and I'm not sure I can figure that out on my own. I'm commiting the normal way for now.