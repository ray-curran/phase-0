# Create a Playlist from Driver Code

# I worked on this challenge .
# I spent  hours on this challenge.


# Pseudocode
=begin
- Create variable for constant Song
- Actually make Song a class so it can accept "new" method
- create initialize method within Song class that accepts two arguments
- create Playlist class
- create initialize method within playlist class that accepts two arguments
- create add method within playlist class
- give add method two arguments
- create num_of_tracks method within playlist class
- create play method in song class
- create remove method in playlist class
- give remove method one argument
- add includes? method to playlist class
- add play_all method to playlist
=end

# Initial Solution
=begin
class Song
  def initialize(one,two)
  end

  def play
  end
end

class Playlist
  def initialize(*)
  end

  def add(one,two)
  end

  def num_of_tracks
  end

  def remove(one)
  end

  def includes?(one)
  end

  def play_all
  end
end
=end



# Refactored Solution
class Song
  
  attr_reader :song, :artist
  def initialize(song, artist)
    @song=song
    @artist=artist
  end

  def play
    puts @song
  end
end

class Playlist
  def initialize(*tracks)
    @tracks = tracks
  end

  def add(*songs)
    songs.each do |song|
      @tracks << song
    end
  end

  def num_of_tracks
    return @tracks.length
  end

  def remove(track_to_remove)
    @tracks.delete_if {|track| track === track_to_remove}
  end

  def includes?(title)
    @tracks.each do |song|
      if title === song
        return true
      end
    end
  end

  def play_all
    @tracks.each do |song|
      song.play
    end
  end
  
  def display
    puts "Current Playlist:"
    @tracks.each do |song|
      puts "#{song.song} by #{song.artist}"
    end
  end
end





# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection