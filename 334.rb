# Step 1: Read the problem below.
# Step 2: Decompose the problem into smaller testable problems. DO NOT SOLVE THE PROBLEM YET.
# Step 3: Solve each problem until you get stuck. YOU DO NOT NEED TO SOLVE THE COMPLETE PROBLEM!

# QUESTION 1
# Have the user enter 10 words, and allow for duplicate words. 
# After the user is done, the program will tell the user 
# which word was entered the most frequently.
# For example, if the user enters: 
#   apple, banana, orange, pear, apple, pear, apple, squash, apple, pear
# The program will say: "apple was your most common word"
# (That's because apple appeared in the user's list 4 times, more than any other word.)



#1 ask user for words until you have a list of ten.
#2 for each word, add to hash if not included in hash keys. else, increase hash value by 1.
#3 take hash keys and values, and iterate over hash values.
#4 take a highest count variable, and a list. If a new highest is found, the list becomes one entry. if it's equal, add word to list.
#5 give two output options, depending on if there is one or more most frequent words.


puts "Enter 10 words:"
words, words_count = [], {}

while words.length < 10
    words.push(gets.chomp)
end

words.each do |w|
    if words_count.keys.include?(w)
        words_count[w] = words_count[w] + 1
    else
        words_count[w] = 1
    end
end

count, longest = 0, []
keys, values, i = words_count.keys, words_count.values, 0

while i < values.length
    if values[i] > count
        longest = [keys[i]]
        count = values[i]
    elsif values[i] == count
        longest.push(keys[i])
    end
    i +=1
end

if longest.length == 1
    puts "#{longest[0]} was your most common word."
else
    puts "These are your most common words: #{longest.join(", ")}."
end



