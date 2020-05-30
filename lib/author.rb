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


  def self.post_count
    Post.all.count
  end

  def self.all
    @@all
  end
  
end