# QUESTION 1
# Write a method that takes in an array of numbers and returns the mean average.
# Then run the method and print the result.


arr = []
20.times do
    arr.push(rand(1...100))
end


def mean_average(arr)
    return arr.sum / arr.length
end


pp arr
pp mean_average(arr)