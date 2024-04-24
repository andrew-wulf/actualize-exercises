# QUESTION 1
# Create a program that asks the user to enter 5 numbers. 
# Then, tell the user the mean average of all the numbers.
# The mean average is defined as the sum of all the numbers 
# divided by the count of how many numbers there are. 
# For example, if the user enters: 11, 7, 30, 22, 55
# the average will be 25. This is because 11 + 7 + 30 + 22 + 55 = 125, and 125 / 5 
# (the amount of numbers in the list) = 25.

# Note: If you run the code p 9 / 2, it prints 4 even though the result should be 4.5. 
# This is because when dividing integers in Ruby, the result will be an integer. 


puts "Enter 5 numbers:"
nums = []

while nums.length < 5
    n = gets.chomp.to_i
    if n != 0
        nums.push(n)
    else
        puts "Must be valid number that isn't zero."
    end
end

p nums

sum = nums.sum
mean_average = sum / nums.length

2.times do
    nums.delete(nums.max)
    nums.delete(nums.min)
end
mean = nums[0]

puts "The mean of these numbers is #{mean}, the sum is #{sum}, and the mean average is #{mean_average}."