class Author 
  attr_accessor :post, :name
  @@all = []
  @post = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def posts 
    Posts.all.select {|a_post| a_post.author == self}
  end
  def add_post(post)
    post.author = self
  end
  def add_post_by_title(new_title)
   a_post = Post.new(new_title)
   a_post.author = self
  @post <<  a_post
  @@all << a_post
  end
  def self.all
    @@all
  end
  def self.post_count
    newarr=Post.all.select {|posts| !posts.author.nil?}
    newarr.size
  end
end