# QUESTION 1
# Create a method that accepts three numbers as inputs, 
# and returns the product of all three numbers. 
# So, if the three inputs were 2, 4, and 6, the output should be 48.

def multiply(a, b, c)
    return a * b * c
end

puts "enter 3 numbers."
a, b, c = gets.chomp.to_f, gets.chomp.to_f, gets.chomp.to_f
puts "Product: " + multiply(a, b, c).to_s


# QUESTION 2
# The following method is supposed to take in 3 numbers and return the sum.
# However, there are mistakes in the code that cause it to crash.
# Explain what the error message means in your own words, then fix the mistakes in the code.
def add_three_numbers(number1, number2, number3)
    return number1 + number2 + number3
  end
  
  numbers = [3, 2, 7]
  puts add_three_numbers(*numbers)
  
 # an array does not naturally pass its values as arguments, rather the whole array is passed as one argument.
 # a method that explicitly calls for a number of arguments to be given must recieve the same number of arguments or it will return an error.
 # ruby contains a useful operator though -- adding * will destructure the array, making it easy to use array values as arguments.