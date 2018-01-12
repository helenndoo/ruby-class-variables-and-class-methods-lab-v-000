require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre

    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    #count method, track number songs it creats, return total number of songs
    @@count
  end

  def self.artists # "self." makes it a class method
    #look up uniq method
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash = {}
    self.genres.each do |genre|
      count = @@genres.find_all{ |g| g == genre}
      hash[genre] = count
    end
    hash
  end

  def self.artist_count
    hash = {}
    self.artists.each do |artist|
      count = @@artists.find_all{ |a| a == artist}
      hash[artist] = count
    end
  end
end
