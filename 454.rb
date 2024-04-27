# QUESTION 1
# Read about the Ruby begin and rescue keywords to handle exceptions:
# https://docs.ruby-lang.org/en/3.2/syntax/exceptions_rdoc.html
# Then write a program that would crash because of a division by zero error.
# Instead of crashing with a normal error message, the program should instead
# print "You cannot divide by zero" to the terminal.


x = -5

y = 100

while x < 6
    puts "Printing #{y} divided by #{x}..."
    begin
        puts y / x
    rescue => e
        puts "You cannot divide by zero. system message: #{e}"
    ensure
    x +=1
    end
end