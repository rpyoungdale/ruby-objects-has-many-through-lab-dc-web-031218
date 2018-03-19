require_relative './song.rb'
require_relative './genre.rb'

class Artist
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def genres
    @genres = []
    @songs.each {|song| @genres << song.genre}
    @genres
  end
end
