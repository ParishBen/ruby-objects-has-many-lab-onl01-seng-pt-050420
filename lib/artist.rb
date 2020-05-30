class Artist 
  attr_accessor :name, :song
 
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song_name)
    song_name = Song.new 
    song_name.artist = self
    @songs << song_name
  def songs
   @songs
 end
end
