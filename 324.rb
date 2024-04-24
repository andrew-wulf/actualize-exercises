# Step 1: Read the problem below.
# Step 2: Decompose the problem into smaller testable problems. DO NOT SOLVE THE PROBLEM YET.
# Step 3: Solve each problem until you get stuck. YOU DO NOT NEED TO SOLVE THE COMPLETE PROBLEM!

# QUESTION 1
# Start your program with the line of code below.
# The rest of your program should create and print out 
# an array that removes all duplicates from the original array. 
# That is, the second array should look like: [4, 6, 1, 2, 8, 3, 7]
# The one catch: Don't use the "uniq" method available to arrays! (That would do this for you.)
numbers = [4, 6, 1, 4, 2, 8, 3, 4, 1, 7]



#1 Write a code that prints out the numbers.
numbers.each do |n|
    puts n
end
pp numbers

#2 Write a code that prints the numbers, or the word "duplicate" when it finds a number equal to the first number.
i = 1
to_check = numbers[0]
while i < numbers.length
    if numbers[i] == to_check
        puts "duplicate"
    else
        puts numbers[i]
    end
    i +=1
end
pp numbers

#3 Write a code that removes duplicates of the first item instead of printing anything.
i = 1
to_check = numbers[0]
while i < numbers.length
    if numbers[i] == to_check
        numbers.delete_at(i)
    end
    i +=1
end
pp numbers


#4 Write a code that runs the same delete loop within another loop, moving the starting point up by one each time.
numbers = [4, 6, 1, 4, 2, 8, 3, 4, 1, 7]

i = 0
while i < numbers.length
    to_check = numbers[i]

    z = i + 1
    while z < numbers.length
        if numbers[z] == to_check
            numbers.delete_at(z)
        end
        z +=1
    end
    i +=1
end
pp numbers