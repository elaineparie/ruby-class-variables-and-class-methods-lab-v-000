
class Song
attr_accessor :name, :artist, :genre

@@count = 0

@@genres = []
@@artists = []
@@genre_count = {}

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
  @@genres.uniq
end

def self.artists
  @@artists.uniq
end

def self.genre_count
  counter = 0
@@genres.each do |genre|
  @@genre_count[genre] = counter
counter =+ 1
end
@@genre_count
end


end
