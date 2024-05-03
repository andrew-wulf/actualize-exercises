# QUESTION 1
# Write a method that takes in three strings and uses string interpolation 
# to return all three strings combined with spaces in between as a single string. 
# Then run the method and print the result.


def sentence(*words)
    return words.join(' ') + '!'
end

pp sentence('I', 'enjoy', 'programming')