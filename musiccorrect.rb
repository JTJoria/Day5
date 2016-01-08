
class Song
 
  attr_reader :title, :artist, :duration, :lyrics
  
  def initialize (title, artist, duration, lyrics)
    @title = title
    @artist = artist
    @duration = duration
    @lyrics = lyrics
  end

  def play
    `say #{@lyrics}`
  end

  def friendly_duration
    minutes = @duration / 60
    seconds = @duration % 60
    "#{minutes} minutes, #{seconds} seconds."
  end

end

#driver code
# song = Song.new

# p song.title
# p song.artist
# p song.duration
# p song.friendly_duration
# p song.lyrics