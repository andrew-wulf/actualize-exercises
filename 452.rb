# QUESTION 1
# Write a method that takes in an array of strings and returns an array of the small strings
# where the length of each string is 4 or fewer letters.
# Then run the method and print the result.


arr = []
letters = [*'a'..'z']

20.times do
    word = ""
    rand(1..8).times {word += letters[rand(26)]}
    arr.push(word)
end

p arr
pp arr.select {|w| w.length < 5}
