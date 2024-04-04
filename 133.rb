# QUESTION 1
# Write a program that uses a while loop to print the numbers from 1 to 20.
# If the number is 7 or 15, it should also print out "Hey, that's my lucky number!"

i = 0
while i <= 20
    p i
    if i == 7 or i == 15
        p "Hey, that's my lucky number!"
    end
    i +=1
end

# QUESTION 2
# Finish annotating the code below.
# Then run the code to see if the output matches your annotation.
number = 0             # 1
while 2 > number       # 2 6 9 
  if number < 1        # 3 7
    puts number        # 4
  end
  number = number + 1  # 5 8
end
puts "Done!"           # 10

# 1: number is 0
# 2: (2 is greater than 0, continue)
# 3: 0 < 1, run loop
# 4: print 0
# 5: number is 1
# 6: 2 > 1, run loop
# 7: 1 not < 1, skip loop
# 8: number is 2
# 9: 2 not > 2, skip loop
# 10: print "Done!"
