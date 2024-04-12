# QUESTION 1
# Use a variable to store an array with three different words.
# Then add one more word to the array and print the array on one line.

three_words = ['apple', 'banana', 'pear']
three_words << 'pear'
pp three_words


# QUESTION 2
# Use a variable to store a hash with two different words and their definitions.
# Then add one more word with its definition and print the hash on one line.

words = {palindrome: "A word or phrase that spells the same forwards and backwards.", 
simile: "A literary device, compares one thing to another using \"like\" or \"as\"."}
words[:idiom] = "A common saying with a meaning that doesn't logically follow from the words."

p words
