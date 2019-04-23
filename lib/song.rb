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
        @@artist_count[artist] = 1
      end
    @@artists << artist
    @genre = genre
    @@genres << genre
      if @@genres.include?(artist)
        @@genre_count[artist] += 1
      else
        @@genre_count[artist] = 1
      end
  end

  def .count
    @@count
  end

  def .artists
    artists_arr
    @@artists.each_with_index do
      if !(artists_arr.include?(index))
        arrtists_arr << index
      end
    end
    artists_arr
  end

  def .genres
    @@genres
  end

  def .genre_count
    @@genre_count
  end

  def .artist_count
    @@artist_count
  end

end
