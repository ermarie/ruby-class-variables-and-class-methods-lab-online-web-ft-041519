class Song
  @@count = 0
  @@sartists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  attr_accessor :name, :artist, :genre

  def initialized(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
  end

end
