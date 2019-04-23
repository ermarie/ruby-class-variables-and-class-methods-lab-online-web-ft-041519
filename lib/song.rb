class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  attr_accessor :name, :artist, :genre

  def initialized(name, artist, genre)
    @name = name
    @@count += 1
    @artist = artist
    if @@artists.include?(artist)
      @@artist_count[artist] << name
    else
      @@artists[artist] = artist
    end
    @genre = genre
    if @@genres.include?(genre)
      @@genres << genre
    else
      @@genres[genre] = name
    end
  end

  def class
    @@count
  end

end
