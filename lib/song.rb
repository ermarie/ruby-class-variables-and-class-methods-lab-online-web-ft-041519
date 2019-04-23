class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @@count += 1
    @artist = artist
      if @@artists.include?(artist)
        @@artist_count[artist] += 1
      else
        @@artists << artist
        @@artist_count[artist] = 1
      end
    @genre = genre

      if @@genres.include?(artist)
        @@genre_count[artist] += 1
      else
        @@genres << genre
        @@genre_count[artist] = 1
      end
  end

  def count
    @@count
  end

  def genre
    @@genres
  end

end
