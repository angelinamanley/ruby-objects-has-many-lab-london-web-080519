require_relative "post.rb"


class Author 

    attr_accessor :name, :posts

    def initialize(name) 
        @name = name
    end 

    def posts
        Post.all 
    end 

    def add_post(post)
        post.author = self 
    end 

    def add_post_by_title(post_title)
        post_title = Post.new(post_title)
        add_post(post_title)
    end 

    def self.post_count 
        Post.all.length
    end
    
    

end 
