require 'pry'
class Song 
  
  @@count = 0 
  @@artists = [] 
  @@genres = []
  @@genre_count = {}

  attr_accessor(:name, :artist, :genre)
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name 
    @artist = artist 
    @genre = genre 
    @@genres << genre 
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres 
    @@genres = @@genres.uniq
  end 
  
  def self.artists
    @@artists = @@artists.uniq
  end
  
  def self.genre_count
    @@genres.map do |genre_name|
      @@genre_count[genre_name] += 1
    end
    @@genre_count
  end 
    
end 

# the_way_you_move = Song.new("The way you move", "Outcast", "R&B")
# # hit_me_baby_one_more_time = Song.new ("Hit me baby one more time", "Britney Spears", "Pop")
# i_shot_the_sheriff = Song.new("I shot the sheriff", "Bob Marley", "Regae")
# back_like_that = Song.new("Back like that", "NeYo", "R&B")
# Song.genre_count
