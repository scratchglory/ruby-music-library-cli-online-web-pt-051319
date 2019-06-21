class Genre
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all
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
  def Genre.create(name)
    # binding.pry
   new_genre = self.new(name) 
   new_genre.save
   new_genre
  end
end