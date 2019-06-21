require 'pry'

class Song 
  attr_accessor :name
  attr_reader :artist, :genre
  @@all = []
  
  ##initialize: can be invoked with an optional second argument, an Artist object to be assigned to the song's 'artist' property (song belongs to artist)
  
  def initialize(name, artist = nil, genre = nil) # I think this is hardcoded?
    @name = name
    self.artist = artist if artist
    self.genre = genre if genre
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
  
  # initializes, saves, and returns the song
  def Song.create(name)
    # binding.pry
   new_song = self.new(name) 
   new_song.save
   new_song
  end
  

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def genre=(genre)
    @genre = genre
    genre.songs << self unless genre.songs.include?(self)
  end
end