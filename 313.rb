# QUESTION 1
# Create a fortune teller which tells the user a fortune based on the user's favorite number. 
# Give at least 3 possible outcomes. So along these lines, for example: 
# If the user's favorite number is below 50, give fortune X. 
# If the user's favorite number is between 50 and 100, give fortune Y. 
# If the user's favorite number is above 100, give fortune Z.


i, primes = 0, []
while i < 30
    primes.push(6 * i + 1)
    i+=1
end


while true
    puts "I will tell your fortune! First, I need a number:"
    num = gets.chomp.to_i

    if num <= 0
        break
    end

    puts "\n"
    if num % 5 == 0
        puts "You will experience a season of great change."

    elsif primes.include?(num)
        puts "You are in your prime years, enjoy them while you can."

    elsif num < 100
        puts "You need to think bigger! Follow your dreams, you can get more out of life than you think."

    else
        puts "You may want to spend more time with yourself and nurture your energy, so you can be present to those who need you."
    end
    puts "\n"
end