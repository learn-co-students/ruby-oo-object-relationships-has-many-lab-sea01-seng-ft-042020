require 'pry'
class Artist
    attr_accessor :name
    attr_writer
    attr_reader

    def initialize(name)
        @name = name
    end
end
picasso = Artist.new("Picasso")
# binding.pry
0