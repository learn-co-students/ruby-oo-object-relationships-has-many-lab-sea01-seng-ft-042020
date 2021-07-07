class Artist
    attr_accessor :name

    #initialized with a name object 
    def initialize(name)
        @name = name   
    end

    #method made to add  song 
    #self passes the argument on itself
    def add_song(song)
        song.artist = self 
    end

    #returns a list of songs that the artist has
    def songs
        Song.all.select {|song| song.artist == self}
    end

    #this is the link between the Artist and Song classes
    #takes the song name and adds it to the artist's collection
    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def self.song_count
      Song.all.count
    end
end