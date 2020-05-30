class Author 
  attr_accessor :post, :name
  
  def initialize(name)
    @name = name
    @post = []
  end
  def posts 
    @post
  end
  def add_post(poster)
   poster = Post.new
   @post << poster
   poster.author = self
  end  
  def add_post_by_title(new_title)
   a_post = Post.new(new_title)
   a_post.author = self
  @post <<  a_post
  end
  def self.post_count
    Post.all
  end
end