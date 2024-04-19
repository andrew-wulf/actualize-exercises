# QUESTION 1
# Use a loop to create a new array with only the strings with 6 or fewer letters.
words = ["correct", "horse", "battery", "staple"]

new_words = []
words.each do |w|
    if w.length <= 6
        new_words.push(w)
    end
end
pp new_words