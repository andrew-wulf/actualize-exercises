# QUESTION 1
# Read about regular expressions in Ruby:
# http://ruby-for-beginners.rubymonstas.org/advanced/regular_expressions.html 
# Then write a program that takes in a string and prints out 
# the total number of numbers found in the string using regular expressions. 
# For example, given the string "Pg7USm29ln", the program would print 3 since
# there are 3 total numbers (7, 2, and 9) in the string.




def find_numbers(str)
    puts str.scan(/\d/).length
end


find_numbers("Pg7USm29ln")