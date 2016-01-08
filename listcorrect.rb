
class List

  attr_reader :name, :songs

  def initialize (name)
    @name = name
    @songs = []
  end

  def add_song(new_song)
    @songs << new_song
  end

  def play(songs = @songs)
    songs.each { |song| song.play }
  end

  def shuffle
    shuffled_list = @songs.shuffle
    play(shuffled_list)
  end

  def duration
    total_duration = 0
    @songs.each do |song|
      total_duration += song.duration
    end

    total_duration
  end
end





#driver code
list = List.new

p list