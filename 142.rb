# QUESTION 1
# Write a program that starts with an array of strings, 
# then prints out each string on separate lines using a while loop.

words, i = ['I', 'like', 'to', 'ride', 'my', 'bicycle'], 0
while i < words.length
    puts words[i]
    i += 1
end

# QUESTION 2
# Write a program that starts with an array of numbers, 
# then prints out each number times 3 using a while loop.

nums, i = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 0
while i < nums.length
    z = 0
    while z < 3
        puts nums[i]
        z +=1
    end
    i +=1
end
