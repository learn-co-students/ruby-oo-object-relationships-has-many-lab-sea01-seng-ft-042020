class Author
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(name)
        post = Post.new(name)
        post.author = self
    end

    def self.post_count
        i = 0
        Post.all.each {|post| i += 1}
        i
    end
end