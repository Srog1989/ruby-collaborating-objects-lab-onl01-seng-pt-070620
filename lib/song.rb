class Song
 attr_accessor :name, :artist
 @@all = []
 def initialize(name, artist)
   @name = name
   @artist = artist
   @@all << self
  end
  def self.all
    @@all
  end
  def self.new_by_filename(files)
    song = self.new
    song.artist, song.title = files.split(" - ")
    song
  end
end
  
  