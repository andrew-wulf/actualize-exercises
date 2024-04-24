# QUESTION 1
# Read about the Ruby File class: https://rubyapi.org/3.2/o/s?q=file
# Then write a program that creates a file called example.txt with the 
# sentence "This is an example!" in it.


text = <<~EOT
This is a text file,
created by a script written in 
the Ruby programming language.
EOT


file = File.new("example.txt", 'w+')

file.write(text)
file.rewind

pp file.read
puts "------------"

file.rewind

for line in file
    puts line
end
