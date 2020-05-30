class Author 
  attr_accessor :post, :name
  @post = []
  def initialize(name)
    @name = name
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
  
  end
end