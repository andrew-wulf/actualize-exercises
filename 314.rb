# Step 1: Read the problem below.
# Step 2: Decompose the problem into smaller testable problems. DO NOT SOLVE THE PROBLEM YET.
# Step 3: Solve each problem until you get stuck. YOU DO NOT NEED TO SOLVE THE COMPLETE PROBLEM!

# QUESTION 1
# Ancay ouyay igurefay histay neoay utoay?
# Pig Latin is a very sophisticated language in which 
# each English word is converted as follows: 
# The first letter of each word is removed from the beginning and added to the end. 
# Then, the letters 'ay' are added to the very end of the word.
# For example: hello = ellohay, pingpong = ingpongpay, marmalade = armalademay, etc.
# Write a program that asks the user to enter a single word 
# and prints out the Pig Latin version of that word.





#1 ask user for input, and return it
#2 take first letter from string
#3 make a new string: string starting at second letter + first letter + "ay"

def latinify(word)
    return "#{word[1..]}-#{word[0]}ay"
end

#4 Take a sentence, splitting by spaces
#5 apply word translator to each word in map function
#6 return joined array
#7 if word starts with vowel, keep word and add "-yay"
#8 for each word in array, check if if punctuation exists.
#9 while punctuation exists at the end of a word, remove it and store the symbols in an array.
#10 add joined symbols to the end of the translated word each time.

def advanced_latinify(sentence)
    words = sentence.split(' ')
    
    translated_words = words.map do |word| 
        symbols = []
        while true
            if "!()-,.?:;'\"".split(//).include?(word[-1])
                symbols.push(word[-1])
                word = word[..-2]
            else
                break
            end
        end

        if ['a', 'e', 'i', 'o', 'u'].include?(word[0].downcase)
            word += "-yay"
        else
            word = "#{word[1..]}-#{word[0]}ay"
        end

        if symbols.length > 0
            word += symbols.join()
        end
        word
    end

    return translated_words.join(' ')
end


puts "Give me a word, and I'll translate it:"
word = gets.chomp
puts latinify(word)

puts "\nGive me a sentence, and I'll translate it:"
puts advanced_latinify(gets.chomp)

demo = """I returned, and saw under the sun, that the race is not to the swift, 
nor the battle to the strong, neither yet riches to men of understanding, 
nor yet favor to men of skill; but time and chance happeneth to them all."""

puts "\nType anything to proceed with last demonstration."
wait = gets.chomp
puts advanced_latinify(demo)