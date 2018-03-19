require_relative './artist.rb'
require_relative './genre.rb'

class Song
  attr_accessor :artist, :genre

  def initialize(name, genre)
    @name = name
    genre.add_song(self)
  end
end
