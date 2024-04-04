# QUESTION 1
# Write code using a while loop that asks the user to enter a number 
# and will run forever until the user enters a number greater than 10.


number, attempts = 0, 0
while number < 10
    if attempts == 0
        puts "Name a number greater than 10. I'll wait..."
    elsif attempts % 3 == 0
        puts "*yawn"
    else
        puts "still waiting..."
    end
    number = gets.chomp.to_f
    attempts += 1
end
puts "Well done!"

# QUESTION 2
# The following code will run 100 times, and each time it will ask the user for their name. 
# The code will break early if the user's name is Bob.
# Rewrite the code using a while loop so the program will run *forever* unless 
# the user enters a name of Bob.

name = ''
while name.capitalize != "Bob"
  puts "What is your name?"  
  name = gets.chomp
end

puts "Hi, Bob!"
