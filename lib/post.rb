class Post 
  attr_accessor :author, :title 
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end
  def Post.all
    @@all
  end
 def author_name
   if !@author
     nil
   else self.author.name
 end
 end
end