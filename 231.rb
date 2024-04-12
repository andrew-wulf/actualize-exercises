# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.
#----------------
# Write a Playlist class that stores a name and an array of songs with methods to add a song, 
# remove a song, shuffle the songs into a random order, and display all the songs.


# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.
#----------------
# I want to do more with math, converting arrays/hashes and/or working with nested arrays/hashes.


class Song
    def initialize(title, artist, album)
        @title = title
        @artist = artist
        @album = album
    end

    def data
        return "#{@title} -- #{@artist} | #{@album}"
    end

    def title
        return @title
    end
end

class Playlist
    def initialize(name)
        @name = name
        @songs = []
    end

    def name
        return @name
    end

    def add_song(song)
        @songs.push(song)
    end

    def remove_song(i)
        @songs.delete_at(i)
    end

    def show_songs
        if @songs.length == 0
            puts "This playlist is empty. use the \"add\" command to add a song!"
        end
        i = 1
        @songs.each do |song| 
            puts "#{i} | #{song.title}"
            i+=1
        end
    end

    def display_song(id)
        @songs[i - 1].data
    end
    
    def songs
        return @songs
    end

    def shuffle
        unused, shuffled, i = [], [], 0
        while i < @songs.length
            unused.push(i)
            i+=1
        end
        i = 0
        while i < @songs.length
            rand_index = rand(0...unused.length)
            shuffled.push(@songs[unused[rand_index]])
            unused.delete_at(rand_index)
            i+=1
        end
        @songs = shuffled
        puts "Playlist shuffled. Refreshing..."
        self.show_songs
    end
end


class Library
    def initialize
        @songs, @playlists, @current = [], {}, nil
    end
    
    def add_song(title, artist, album)
        @songs.push(Song.new(title, artist, album))
    end

    def create_playlist(name)
        @playlists[name] = Playlist.new(name)
    end

    def songs
        return @songs
    end
    def playlists
        return @playlists
    end

    def select_playlist
        puts "current playlists: #{@playlists.keys}"

        puts "\nwhich playlist would you like to view?"        
        
        while true
            comm = gets.chomp
            if @playlists.keys.include?(comm)
                break
            end
        end
        @current = @playlists[comm]
        @current.show_songs
    end

    def playlist
        return @current
    end
end
    



def demo(song_data)
    lib = Library.new
    song_data.each do |s|
        lib.add_song(*s)
    end

    lib.create_playlist('red')
    lib.create_playlist('blue')
    lib.create_playlist('green')
    lib.create_playlist('yellow')
    lib.create_playlist('black')
    lib.create_playlist('pink')

    i = 0
    lib.songs.each do |s|
        lib.playlists[lib.playlists.keys[i]].add_song(s)
        if i < 5
            i +=1
        else
            i = 0
        end
    end

    puts "\nWelcome to your music library!"

    lib.select_playlist

    puts "\nViewing playlist \"#{lib.playlist.name}\""
    puts "\nPlaylist commands: \nview [integer] = view song at given index \ndelete [integer] = remove song at given index \nadd = add song from library \nshuffle = randomize playlist order \nplaylists = view playlists \nnew playlist = create playlist \nexit = stop program\n"
    

    running = true
    while running
        begin
            comm = gets.chomp
            
            if comm == "exit"
                running = false
            elsif comm[0...5] == "view "
                i = comm[5...].to_i
                puts lib.playlist.songs[i - 1].data
            elsif comm[0...7] == "delete "
                i = comm[7...].to_i
                lib.playlist.remove_song(i - 1)
                puts "song deleted. refreshing..."
                lib.playlist.show_songs
            elsif comm == "add"
                i = 1
                lib.songs.each do |s|
                    puts "#{i} | #{s.title}"
                i +=1
                end
                puts "enter index of song to add:"
                to_add = gets.chomp.to_i
                lib.playlist.add_song(lib.songs[to_add - 1])
                puts "song added, refreshing playlist."
                lib.playlist.show_songs
            elsif comm == "playlists"
                lib.select_playlist

            elsif comm == "new playlist"
                puts "Enter name for playlist:"
                name = gets.chomp
                lib.create_playlist(name)
                lib.playlist.show_songs
            
            elsif comm == "shuffle"
                lib.playlist.shuffle
            else
                puts "Invalid command."
            end
        rescue
            puts "Invalid command."
        end
    end
end




song_data = [["Cry", "Benson Boone", "Fireworks & Rollerblades"],
["MASC (feat. Teezo Touchdown)", "Doja Cat", "Scarlet 2 CLAUDE"],
["Crocodile Tearz", "J. Cole", "Might Delete Later"],
["Prep-School Gangsters", "Vampire Weekend", "Only God Was Above Us"],
["Wanna Be (with Megan Thee Stallion)", "GloRilla", "Ehhthang Ehhthang"],
["After Hours", "Kehlani", "After Hours"],
["Ciao!", "Bryson Tiller", "Bryson Tiller"],
["Eyes Closed", "Imagine Dragons", "Eyes Closed"],
["Creatures in Heaven", "Glass Animals", "Creatures In Heaven"],
["Drunk, Running", "Lizzy McAlpine", "Older"],
["Natanael Cano: Bzrp Music Sessions, Vol. 59",
 "Bizarrap",
 "Natanael Cano: Bzrp Music Sessions, Vol. 59"],
["Potato Loaded (feat. Destroy Lonely)",
 "Quavo",
 "Potato Loaded (feat. Destroy Lonely)"],
["1+1=11 - Edit", "Peggy Gou", "1+1=11"],
["Keep It Up", "Good Neighbours", "Keep It Up"],
["Fainted Love", "Conan Gray", "Found Heaven"],
["Utopia", "ODIE", "N.F.A. DEMOS"],
["Stick Around", "Medium Build", "Country"],
["Good Luck, Babe!", "Chappell Roan", "Good Luck, Babe!"],
["Overtime (feat. Kacey Musgraves)",
 "Rainbow Kitten Surprise",
 "Overtime (feat. Kacey Musgraves)"],
["I Don't Wanna Wait", "David Guetta", "I Don't Wanna Wait"],
["Club classics", "Charli XCX", "Club classics / B2b"],
["My Oh My", "Ava Max", "My Oh My"],
["princess peach", "Young Miko", "att."],
["Femme Fatale (feat. Coi Leray & Kaliii)",
 "G-Eazy",
 "Femme Fatale (feat. Coi Leray & Kaliii)"],
["86Sentra", "NxWorries", "86Sentra"],
["Spite", "Omar Apollo", "Spite"],
["Pillow In My Arms", "Griff", "ver2igo vol. 2"],
["On The Game", "The Black Keys", "Ohio Players"],
["Country House", "Sam Hunt", "Locked Up"],
["Please Don't Fall In Love With Me",
 "Khalid",
 "Please Don't Fall In Love With Me"],
["7 Minute Drill", "J. Cole", "Might Delete Later"],
["Bless (feat. Young Thug)", "Lil Wayne", "Bless"],
["HUMO", "Chencho Corleone", "HUMO"],
["Lejos de Ti", "The Marías", "Lejos de Ti"],
["Incredible (feat. Labrinth)", "Sia", "Incredible (feat. Labrinth)"],
["Comin’ Around Again", "Amber Mark", "Comin’ Around Again"],
["MADONNA & RIHANNA", "Rich Amiri", "MADONNA & RIHANNA"],
["Delilah", "Marcus King", "Mood Swings"],
["Wish I Never Felt", "Nate Smith", "Through the Smoke"],
["Love You, Miss You, Mean It", "Luke Bryan", "Love You, Miss You, Mean It"],
["Hold Me Up (Thank You)", "Khruangbin", "A LA SALA"],
["Co-Pathetic", "Novo Amor", "Collapse List"],
["Good Time", "Cage The Elephant", "Good Time"],
["Dream State", "Kamasi Washington", "Dream State"],
["Brindo Con Agua", "Aventura", "Brindo Con Agua"],
["Santa", "Rvssian", "Santa"],
["Nothing Ever Changes", "Vintage Culture", "Nothing Ever Changes"],
["Birthday", "41", "Birthday"],
["WHERE YO DADDY? (feat. KARRAHBOOO)", "Concrete Boys", "It's Us Vol. 1"],
["thing u do", "Tori Kelly", "TORI."],
["Small Town Scandal", "Zolita", "Small Town Scandal"],
["Self Sabotage", "Katie Pruitt", "Mantras"],
["Smoke On the Highway", "X Ambassadors", "Townie"],
["Shipwreck", "Mount Kimbie", "Shipwreck"],
["Heaven or Not", "Diplo", "Heaven or Not"],
["UNDERDOG SONG (feat. Lil Baby)", "Lil Mabu", "YOUNG GENIUS"],
["This Is The Way (feat. DMX)",
 "Five Finger Death Punch",
 "AfterLife (Deluxe)"],
["Devil I’ve Been", "Chayce Beckham", "Bad For Me"],
["Keep Your Head Up", "We Are Messengers", "Where The Joy Is"],
["Close My Eyes", "Luke Hemmings", "Close My Eyes"],
["Una Vida Pasada", "Camilo", "Una Vida Pasada"],
["Business As Usual (night shift mix)", "Eliza Rose", "Business As Usual"],
["Hiding (feat. Arizona Zervas)",
 "Two Friends",
 "Hiding (feat. Arizona Zervas)"],
["USC", "Chikoruss", "USC"],
["Cartwheels", "Soft Launch", "Cartwheels"],
["Pandora", "Wisp", "Pandora"],
["Bob Dylan Bus (feat. King Isis)",
 "Kenny Mason",
 "Pigeons & Planes presents: See You Next Year 2"],
["2Humpy is Back", "2Rare", "2Humpy is Back"],
["I Know", "6arelyhuman", "Internet Famous"],
["Karma", "JoJo Siwa", "Karma"],
["Time - Edit", "Carlita", "Time"],
["Earrings", "Malcolm Todd", "Sweet Boy"],
["Momma's Been Hurting",
 "Oliver Anthony Music",
 "Hymnal Of A Troubled Man's Mind"],
["my place", "Carly Pearce", "my place"],
["Here To Stay", "Jalen Ngonda", "Here To Stay"],
["i cant fall asleep", "Phora", "heartbreak hotel 2"],
["daddy of mine", "Four Year Strong", "daddy of mine"],
["Get It Right", "Bnny", "One Million Love Songs"],
["Wide As Heaven", "Phosphorescent", "Revelator"],
["Good As It Gets", "Blanco Brown", "Heartache & Lemonade"],
["Stranger To Me", "Waylon Wyatt", "Stranger To Me"],
["Eat Pray Love", "Paul Russell", "Eat Pray Love"],
["Die Trying", "aespa", "Die Trying"],
["joycelyn's dance", "berlioz", "joycelyn's dance"],
["Workin’ On It", "Brijean", "Workin' On It"],
["Heartless feat. Ikky", "Jay Sean", "Heartless feat. Ikky"],
["EXXACTLY", "TisaKorean", "MUMU 8818"],
["The Weekend", "Anti Up", "The Weekend / Control the Media"],
["What Does it Mean", "Gustaf", "Package Pt. 2"],
["Mine", "Michael Gerow", "Mine"],
["Bud Light The Way", "Owen Riegling", "Bud Light The Way"],
["Same Drunk", "Walker Hayes", "Sober Thoughts"],
["In The Cards", "Jamie Miller", "In The Cards"],
["Drive ft. KIDDO", "Steve Aoki", "Drive ft. KIDDO"],
["Forever", "Fabiana Palladino", "Fabiana Palladino"],
["I Hate You In The Morning", "Otha", "I Hate You In The Morning"],
["Life After You", "Julia Cole", "Life After You"],
["Faltas Tú", "Morat", "Faltas Tú"],
["back to him", "Amelia Moore", "he's just not that into you!"]]

demo(song_data)
