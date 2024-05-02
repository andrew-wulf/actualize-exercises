# QUESTION 1
# Write a method called `check_power_level` that asks the user to enter a number.
# If the number is greater than 9000, it will print "BIG" to the screen.
# Otherwise, it will print "SMALL" to the screen.
# Then run the method to see the result.

def check_power_level(lvl)
    if lvl > 9000
        puts "BIG"
    else
        puts "SMALL"
    end
end


check_power_level(1)
check_power_level(150000000)