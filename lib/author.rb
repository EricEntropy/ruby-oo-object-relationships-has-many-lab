class Author
    attr_accessor :name
    @@post_counter = 0
  
    def initialize(name)
      @name = name
    end

    def add_post(post)
        post.author = self
    end
  
    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end 

    def posts
        Post.all.select {|post| 
        if post.author == self
            #counter for all songs from all artists
            @@post_counter += 1
            post.author == self
        end}
    end

    def self.post_count
        @@post_counter-1
    end
end 