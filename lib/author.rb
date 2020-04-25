require 'pry'
class Author
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end
    def posts
        @posts
    end
    def add_post(post)
        post.author = self
    end
    def add_post_by_title(title)
        add_post(Post.new("#{title}"))
    end
    def self.all
        @@all
    end
    def self.post_count
        Post.all.count
    end
end