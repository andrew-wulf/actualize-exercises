# QUESTION 1
# Write a program that asks the user for their name.
# If their name is Martin, print "Hi Martin!" to the screen.
# Otherwise print "You're not Martin."
puts "What's your name?"
name = gets.chomp

while name != 'Martin'
    puts "You're not Martin..."
    name = gets.chomp
end
puts "Hi Martin!"

# QUESTION 2
# Fix the indentation and the errors with the code below.
x = 1000
if x < 5
    puts 0
elsif x < 10
    puts 1
elsif x < 100
    puts 2
else
    puts 3
end


