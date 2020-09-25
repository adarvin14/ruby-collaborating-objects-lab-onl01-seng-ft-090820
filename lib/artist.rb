class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def songs
    Song.all.select {|song|song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def self.all
    @@all
  end
  
  def find_or_create_by_name
    self.all.detect{|artist|artist.name == name} || Artist.new
  end
  
  def print_songs
    @songs.each {|song| puts song.name}
  end

end
    