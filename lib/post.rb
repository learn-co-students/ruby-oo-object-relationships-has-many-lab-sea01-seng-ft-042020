class Post

    attr_accessor :title, :author

    @@all = []

    def initialize (title)
        @title = title

        save
    end

    def author_name
        if @author == nil
            nil
        else 
            @author.name
        end
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
    #binding.pry
    0
end