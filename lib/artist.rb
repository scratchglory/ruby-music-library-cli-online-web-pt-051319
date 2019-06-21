require 'pry'

class Artist  
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    # @@all
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def Artist.create(name)
    # binding.pry
   new_artist = self.new(name) 
   new_artist.save
   new_artist
  end
  
  
      # Does not assign the artist if the song already has an artist
  def add_song(song)  
    song.artist = self unless song.artist
      unless songs.include?(song)
      @songs << song 
    end
  end
  
  def genres
      Song.genres
  end
end