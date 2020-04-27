class Song
    attr_accessor :name, :artist
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    # def self.artist_name
    #     @artistself.artist
    # end

    # def self.artist
    #     self.artist.name
    # end

    def artist_name
       if self.artist.nil?
            nil
       else
            self.artist.name
       end
    end
end


# a 
# if a.nil?
#     "nil"
# else
#     a 
# end