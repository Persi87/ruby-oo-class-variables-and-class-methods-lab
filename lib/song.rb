class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    

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

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
          if  genre_count[genre]        #if genre_count[genre] matches the genre in the iteration
            genre_count[genre] += 1     #the value of the genre key += 1 (genre key is the genre we're interating over)
          else                          
            genre_count[genre] = 1      #else if it doesn't match, set the value to 1
          end
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
          if artist_count[artist] 
            artist_count[artist] += 1
          else
            artist_count[artist] = 1
          end
        end
        artist_count
    end

end
