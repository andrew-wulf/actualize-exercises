# Step 1: Read the problem below.
# Step 2: Decompose the problem into smaller testable problems. DO NOT SOLVE THE PROBLEM YET.
# Step 3: Solve each problem until you get stuck. YOU DO NOT NEED TO SOLVE THE COMPLETE PROBLEM!

# QUESTION 1
# Given an integer, write a method to return its roman numeral representation.
# (1 is I, 2 is II, 3 is III, 4 is IV, 5 is V, 6 is VI, 7 is VII, etc.)
# (You can see an example of all the rules here: https://byjus.com/maths/roman-numerals/#chart)



#1 split a number into bases of 10. (14 becomes 10 + 4, 144 becomes 100 + 40 + 4)
#2 I realized an array will accomplish the same purpose(144 becomes [1, 4, 4]).
#3 represent all roman numerals in hashes, split by the base of 10. Values 1-9 for that base will have the corresponding numeral value.
#4 for fun, extending hash library to one million by using * to represent barred numerals.
#5 for each number in array, iterate through hash library in reverse and push the appropriate hashes value for that key to the output.
#6 if one million, don't bother with anything else, just return M*
#7 ask user input, make sure number is valid, add note if 5000 or above

def numeralize(num)
    if num == 1000000
        return 'M*'
    end

    zero = {1 => 'I', 2 => 'II', 3 => 'III', 4 => 'IV', 5 => 'V', 6 => 'VI', 7 => 'VII', 8 => 'VIII', 9 => 'IX'}
    ten = {1 => 'X', 2 => 'XX', 3 => 'XXX', 4 => 'XL', 5 => 'L', 6 => 'LX', 7 => 'LXX', 8 => 'LXXX', 9 => 'XC'}
    hundred = {1 => 'C', 2 => 'CC', 3 => 'CCC', 4 => 'CD', 5 => 'D', 6 => 'DC', 7 => 'DCC', 8 => 'DCCC', 9 => 'CM'}
    thousand = {1 => 'M', 2 => 'MM', 3 => 'MMM', 4 => 'MMMM', 5 => 'V*', 6 => 'VI*', 7 => 'VII*', 8 => 'VIII*', 9 => 'IX*'}
    ten_thousand = {1 => 'X*', 2 => 'XX*', 3 => 'XXX*', 4 => 'XL*', 5 => 'L*', 6 => 'LX*', 7 => 'LXX*', 8 => 'LXXX*', 9 => 'XC*'}
    hundred_thousand = {1 => 'C*', 2 => 'CC*', 3 => 'CCC*', 4 => 'CD*', 5 => 'D*', 6 => 'DC*', 7 => 'DCC*', 8 => 'DCCC*', 9 => 'CM*'}

    bases = [zero, ten, hundred, thousand, ten_thousand, hundred_thousand]

    nums, numerals = num.to_s.split(//), []
    i = nums.length - 1

    nums.each do |n|
        numerals.push(bases[i][n.to_i])
        i -=1
    end
    return numerals.join
end


puts "Give an integer:"
while true
    num = gets.chomp.to_i

    if num < 1
        puts "Must be a real number greater than zero."
    elsif num > 1000000
        puts "Number cannot excede 1 Million."
    else
        break
    end
end

puts "\nThe roman numeral representation of #{num} is #{numeralize(num)}."
if num >= 5000
    puts "Side note: \"*\" multiplies the preceding unit by one thousand, as if previous letters had a bar overhead. Ex: \"VIII*\" = 8000." 
end
puts "\n"
