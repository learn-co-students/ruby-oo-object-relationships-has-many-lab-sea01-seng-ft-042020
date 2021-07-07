class Post
    attr_accessor :title, :author
    @@all = []

    def initialize(title)
        @title = title
        @author = author
        @@all << self
    end

    def self.all
        @@all
    end
    
    def author
        @author
    end

    def author_name
        if @author == nil
            return nil
        elsif author.posts.include?(self)
            return author.name
        end
    end
end