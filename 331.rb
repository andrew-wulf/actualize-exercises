# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.



#Write a program to store the type of book (regular, reference, or special collection) and the number of days its overdue. 
#Then calculate the fine amount based on the following conditions:

#If the book is a regular book and overdue by up to 7 days, the fine is $1 per day.
#If the book is a regular book and overdue by more than 7 days, the fine is $2 per day.
#If the book is a reference book, there is no fine, regardless of the number of days overdue.
#If the book is a special collection book, the fine is $5 per day, regardless of the number of days overdue.

require "date"
dt = DateTime

class Book
    attr_reader :title, :author, :type, :check_date
    def initialize(title, author, type)
        @title, @author, @type = title, author, type
    end

    def check_out(date)
        dt = DateTime
        @check_date = dt.parse(date)
    end
    def check_in
        @check_date = nil
    end
end



collection = [["Don Quixote", "Miguel de Cervantes", "reference", "2024-04-10"],
["Alice's Adventures in Wonderland", "Lewis Carroll", "regular", "2024-04-04"],
["The Adventures of Huckleberry Finn", "Mark Twain", "regular", "2024-03-27"],
["The Adventures of Tom Sawyer", "Mark Twain", "special collection", "2024-04-12"],
["Treasure Island", "Robert Louis Stevenson", "reference", "2024-04-14"],
["Pride and Prejudice", "Jane Austen", "regular", "2024-04-12"],
["Wuthering Heights", "Emily Brontë", "special collection", "2024-04-08"],
["Jane Eyre", "Charlotte Brontë", "regular", "2024-03-19"],
["Moby Dick", "Herman Melville", "reference", "2024-04-10"],
["The Scarlet Letter", "Nathaniel Hawthorne", "special collection", "2024-03-27"]]



def return_book(books)

    date = Date.today
    puts "\nReturn Date: #{date.year}-#{date.month}-#{date.day}"

    for book in books
        fine = 0
        puts "\nBook: #{book.title}  | #{book.author} | #{book.type}"
        puts "Checked out: #{book.check_date.strftime("%y-%m-%d")}"
        days_left = (book.check_date - date).to_i

        puts "Days overdue: #{-days_left}"

        if book.type == 'regular' && days_left < 0
            fine = -(days_left)
            if days_left < -7
                fine *=2
            end
        elsif book.type == 'special collection'
            fine = -(days_left * 5)
        end
        book.check_in

        if fine > 0
            puts "This book has a fine of $#{fine}.00"
        end
    end
end


books = []
for c in collection
    book = Book.new(*c[0..2])
    book.check_out(c[-1])
    books.push(book)
end
return_book(books)



# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.


#I would like to utilize some other basic libraries.