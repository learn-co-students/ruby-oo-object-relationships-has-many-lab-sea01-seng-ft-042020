require 'pry'
class Artist
    attr_accessor :name
    @@songs = []
    def initialize(name)
        @name = name
        @songs = []
    end
    def songs
        @@songs
    end
    def self.songs
        @songs
    end
    def add_song(song)
        song.artist = self
    end
    def add_song_by_name(song_name)
        add_song(Song.new("#{song_name}"))
    end
    def self.song_count
        @@songs.count
    end

end