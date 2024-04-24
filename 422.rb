# QUESTION 1
# Write a method that takes in a string and a number n and returns the string repeated n times.
# Then run the method and print the result.


def repeater(str, x)
    return str * x
end

str = "Hello, world! "
puts repeater(str, 10)
