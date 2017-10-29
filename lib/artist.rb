class Artist

  attr_accessor :name, :songs, :genre

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song, genre)
    @songs << Song.new(song, genre)
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end

end
