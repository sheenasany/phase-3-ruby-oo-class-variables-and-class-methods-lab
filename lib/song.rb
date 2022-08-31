require 'pry'

class Song
 
    # ARTISTS = ["Jay-Z", "Drake", "Beyonce"]
    # GENRES = ["Rap", "Pop"]
    
    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre
    attr_reader :name


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
        
    end

    def self.count
        @@count 
    end

    def self.genres
        @@genres.uniq 
    end

    def Song.artists 
        @@artists.uniq
    end

    def Song.genre_count
        @@genres.tally 
    end

    def Song.artist_count
        @@artists.tally
    end

end

binding.pry
