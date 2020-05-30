class Artist 
  attr_accessor :name, :song
 @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def add_song(song)
    song.artist = self
  end
  def songs
   Song.all.select {|song| song.artist == self}
 end

def self.song_count
    Song.all.count
  end
end
