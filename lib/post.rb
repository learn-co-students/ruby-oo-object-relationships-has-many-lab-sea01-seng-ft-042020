require "pry"
class Post
    attr_accessor :title, :author

    @@all = []

    def initialize(title)
        self.title = title
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def author_name
        self.author ? self.author.name : nil
    end
end