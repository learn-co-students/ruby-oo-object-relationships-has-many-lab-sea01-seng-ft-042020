class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        self.name = name
        @@all.push(self)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song_instance)
        song_instance.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end

    def self.all
        @@all
    end

    def self.song_count
        self.all.sum{|artist_instance| artist_instance.songs.count}
    end
end