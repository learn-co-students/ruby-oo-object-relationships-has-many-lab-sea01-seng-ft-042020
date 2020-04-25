class Post
    attr_reader :author, :title
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end
    def author=(author)
        @author = author
        author.posts << self
    end
    def self.all
        @@all
    end
    def author_name
        # binding.pry
        if self.author.nil?
            self.author
        else
            self.author.name
        end
    end
end