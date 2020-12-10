 
 require 'pry'
 
 
 class Song

     attr_accessor :name, :artist, :genre

     @@count = 0
     @@artists = []
    @@genres = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count = 3
        @@artists << artist
        @@genres << genre

    end
    
    def self.count
        # binding.pry
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        new_hash = {}
        @@genres.each do |topic|
            #binding.pry
           if new_hash[topic]
            new_hash[topic] += 1
           else 
            new_hash[topic] = 1
           end
        end
        new_hash
    end
    
   def self.artist_count
    new_hash = Hash.new
        @@artists.each do |topic|
            if new_hash[topic]
                new_hash[topic] += 1
            else
                new_hash[topic] = 1
            end
        end
        new_hash
   end

 end