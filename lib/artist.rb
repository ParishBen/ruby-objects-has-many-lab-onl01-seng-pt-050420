class Artist 
  attr_accessor :name, :song
  @songs = ["I will always love you", "Never let go, Jack", "this song", "and another hit"]
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song_name)
    song_name = Song.new 
    song_name.artist = self
  def songs
   @songs
 end
end
