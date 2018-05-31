
class Song
attr_accessor :name, :artist, :genre

@@count = 0

@@genres = []
@@artists = []
@@genre_count = 0

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

def genre_count
@@genres.collect do |genre, count|
@@genre_count << genre[count]
end
@@genre_count
end


end
