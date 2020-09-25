class MP3Importer

  attr_reader :path

  def initialize(path)
        @path = path
  end 
    
    
    
  def import
    files.each{|files| Song.new_by_file_name(files)}
  end

end