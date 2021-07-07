require 'pry'
class Author

    attr_accessor :name
    attr_writer :posts

    @@all = []

    def initialize(name)
        @name = name
        @posts = []
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        post.author = self
        
    end

    def add_post_by_title(post)
        new_post = Post.new(post)
        add_post(new_post)
        # add_to_post_count
    end

    # def add_to_post_count
    #     @@post_count += 1
    # end

    def self.post_count
        Post.all.count
    end
# binding.pry

end
