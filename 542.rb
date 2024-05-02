# QUESTION 1
# Write a method that takes in an array of numbers 
# and returns a count of how many times the number 100 appeared in the array. 
# Then run the method and print the result.

arr = []
30.times do
    arr.push(rand(90..120))
end

pp arr

def count_hundred(arr)
    return arr.count(100)
end

puts "Number of hundreds: #{count_hundred(arr)}"