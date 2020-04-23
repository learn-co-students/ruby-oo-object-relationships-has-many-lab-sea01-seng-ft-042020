class Author
    attr_accessor :name

    @@all = []

    def initialize(name)
        self.name = name
        @@all.push(self)
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post_instance)
        post_instance.author = self
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        post.author = self
    end

    def self.all
        @@all
    end

    def self.post_count
        self.all.sum{|author_instance| author_instance.posts.count}
    end
end