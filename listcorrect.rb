# create a list class
# songs can be added to the list with an add song method
# play method, play each song in the list
# shuffle method, plays each song in the list, in a random order
  #mix up order
  #play each song
#duration method-returns the sum total of all the seconds in the list
  #summing up all duration
  #return total


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
  end
end





#driver code
list = List.new

p list