# QUESTION 1
# In this code, the variable z is printed out on lines 4 and 6. 
# Predict what will print out to the terminal, then run the code to see if you were right. 
# Explain in your own words exactly why those values were printed to the terminal.
x = 40
y = 3
z = x + y
puts z
x = 60
puts z

#I predict:
#43
#43
#I believe that like in Python, the phrase "x = 60" 
#creates an entirely new instance of x, and 
#doesn't affect any variables that used previous instances of x. 


# QUESTION 2
# Write comments for the remaining lines to describe in your own words 
# what is happening line by line with the following code.
mars = 4               # Make a variable called mars and set the value to 4
mars = 2 * mars        # Make a new variable called mars and set the value to 2 times the previous instance of mars
pluto = 7              # Make a variable called pluto and set it to 7
mars = mars - pluto    # A new instance of mars will equal mars minus pluto (8 - 7)
pluto = pluto + mars   # a new instance of pluto will equal pluto plus mars (7 + 1)
puts mars              # print mars (1)
puts pluto             # print pluto (8)
