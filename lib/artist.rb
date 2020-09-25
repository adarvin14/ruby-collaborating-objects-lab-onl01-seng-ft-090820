class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def self.all
    @@all
  end
  
  def find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.new(name)
  end
  
  def print_songs
    @songs.each {|song| puts song.name}
  end

end
    