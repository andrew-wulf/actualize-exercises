# QUESTION 1
# Create a Song class that stores a song's title, artist, and lyrics. 
# Add three methods to give the ability to print out the title, artist, and lyrics attributes.
# Demonstrate how those methods work.

class Song
    def initialize(song, artist, lyrics)
        @song = song
        @artist = artist
        @lyrics = lyrics
    end

    def get_title
        puts @song
    end

    def get_artist
        puts @artist
    end

    def get_lyrics
        puts @lyrics
    end
end

song1 = Song.new('Yesterday', 'The Beatles', 'Yesterday, all my troubles seemed so far away...')
song2 = Song.new('Dancing Queen', 'Abba', 'Friday night and the lights are low...')

for song in [song1, song2]
    song.get_title
    song.get_artist
    song.get_lyrics
end

# the given arguments are stored as instance variables when a new instance of the class is initialized.
# each method prints its associated instance variable to the console.


# QUESTION 2
# The following code has several mistakes that cause it to crash and not run properly.
# Fix the mistakes to make sure the code runs properly.
class Person
    def initialize(input_name, input_age, input_occupation)
      @name = input_name
      @age = input_age
      @occupation = input_occupation
    end
  
    def get_name
      return @name
    end
  end
  
  person = Person.new("Shawn", 42, "accountant")
  puts person.get_name