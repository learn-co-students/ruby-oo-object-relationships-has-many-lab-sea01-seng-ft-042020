class Song
    attr_accessor :name, :artist
    @@all = []
    def initialize(name)
        @name = name
        new
    end

    def new
        @@all << self
    end

    def artist_name
        self.artist ? self.artist.name : nil
    end
    
    def self.all
        @@all
    end
end