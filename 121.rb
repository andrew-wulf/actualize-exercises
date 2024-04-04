# QUESTION 1
# Write example code to demonstrate three string methods you've never 
# worked with before from the Ruby documentation. 
# Write a comment for each method describing how it works in your own words.

words, sentence = ['Hellooooo,', 'avacado,', 'goodbye', 'salutations', 'woorld!!'], "\t\t"

for w in words
    if w.end_with?('ooo,', '!',)
        sentence += " #{w}"
    end
end
sentence.strip!
sentence.squeeze!('o !')

puts sentence

# end_with returns true if the string ends with any of the substrings given.
# strip removes whitespaces (like ' ', line breaks, etc) from the beginning and end of the string.
# squeeze removes repeat characters from a string, in this case only those I listed.
# adding ! to applicable string methods modifies the original string, so a new variable doesn't need to be made each time.


# QUESTION 2
# Write example code that crashes using an integer method from the Ruby documentation. 
# Write a comment describing the error message in your own words.

infinity = (10**500).to_f
puts infinity.to_i

# since floats take up more space, a float that's too large will return infinity. 
# reconverting can't take place because the number is replaced by infinity, and I think infinity has to be a float type,
# probably because a lot of the integer methods would break if infinity could call them.