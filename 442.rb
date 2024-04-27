# QUESTION 1
# Write a method that takes in an array of numbers and returns an array with every number doubled.
# Then run the method and print the result.


def double(arr)
    return arr.map {|x| x * 2}
end



arr = [1, 2, 3, 4, 5, 6]
pp double(arr)