# QUESTION 1
# Write code that asks the user for their name, then asks for their favorite color, 
# then prints out back to them their name and favorite color in a sentence.

puts "Hi, what's your name?"
name = gets.chomp.capitalize
puts "Okay #{name}, what's your favorite color?"
color = gets.chomp.capitalize


puts "To recap: your name is #{name}, and you like the color #{color}."


# QUESTION 2
# The following code has a mistake on one line that doesn't cause the program to crash,
# but it causes the program to have the wrong output.
# Explain where the mistake is occurring, then fix the code
# (this may require changing more than one line).
puts "Please enter a number:"
number = gets.chomp.to_i
doubled_number = number * 2
puts "The doubled number is " + String(doubled_number)

# the number must be converted to int or float to be operated on, 
# and converted back to get added to the string.