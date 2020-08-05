require "pry"
class MP3Importer
attr_accessor :path

def initialize(path)
  @path = path
end


def files
  files = Dir.glob("#{@path}/*.mp3")
  files.collect do |song|
  song.gsub!("#{@path}/","")
end
end


def import
Song.new_by_filename(some_filename)

end
end