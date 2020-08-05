class Song
 attr_accessor :name, :artist
 @@all = []
 def initialize(name)
   @name = name
   @@all << self
  end
  def self.all
    @@all
  end
  def self.new_by_filename(some_filename)
    song = self.new
    song.artist, song.title = some_filename.split(" - ")
    song
  end
end
  
  