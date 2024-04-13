# QUESTION 1
# Revise the Song class so that it reflects idiomatic Ruby conventions.
class Song
    attr_reader :title, :artist, :lyrics
    
    def initialize(title, artist, lyrics)
      @title = title
      @artist = artist
      @lyrics = lyrics
    end
  
    def set_title(title)
      @title = title
    end
  
    def set_artist(artist)
      @artist = artist
    end
  
    def set_lyrics(lyrics)
      @lyrics = lyrics
    end
  end
  
  
  # QUESTION 2
  # Fix the errors in the code below.
  class Person
    attr_reader :name, :height

    def initialize(name, height)
        @name, @height, = name, height
    end
  end
  
  person = Person.new("Rob", 80)
  pp person
  pp person.name
  pp person.height
  