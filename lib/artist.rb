class Artist 
  attr_accessor :name, :songer
  @songs = ["I will always love you", "Never let go, Jack", "this song", "and another hit"]
  def initialize(name)
    @name = name
    @songs = []
  end
  def songs
   @songs
 end
end
