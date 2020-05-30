class Author 
  attr_accessor :post, :name
  @@all = []
  @post = []
  def initialize(name)
    @name = name
   
  end
  def posts 
    @post
  end
  def add_post
   poster = Post.new
   @post << poster
   @@all << poster
   poster.author = self
  end  
  def add_post_by_title(new_title)
   a_post = Post.new(new_title)
   a_post.author = self
  @post <<  a_post
  @@all << a_post
  end
 
  def self.post_count
    @@all.size
  end
end