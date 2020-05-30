class Artist 
  attr_accessor :name, :song
 @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  def add_song(song_name)
    song_name = Song.new 
    song_name.artist = self
    @songs << song_name
    @@all << song_name
  end
  def songs
   @songs
 end
def add_song_by_name(title)
  newest_song = Song.new(title)
  newest_song.artist = self
  @songs << newest_song
end
end
