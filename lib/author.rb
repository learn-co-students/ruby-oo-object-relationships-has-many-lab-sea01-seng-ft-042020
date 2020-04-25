require "pry"

class Author

    attr_accessor :name

    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        Post.all.select do |post|
            post.author == self
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(name)
        name = Post.new(name)
        @posts << name
        name.author = self
    end

    def self.post_count
        Post.all.length
    end

end