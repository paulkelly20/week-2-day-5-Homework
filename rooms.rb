require 'pry'
class Room
  attr_reader :name, :capacity

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @guests = []
    @songs =  []
  end

  def checking_guests_in_room()
    return @guests.count()
  end

  def add_guests_to_room(guest)
    if checking_guests_in_room() < @capacity
      @guests << guest
    end
  end

  def remove_guest_from_room()
    @guests.pop()
    return checking_guests_in_room()
  end

  def checking_songs_in_room()
    return @songs.count()
  end

  def add_songs_to_room(song)
    @songs << song
  end

  def favourite_song(song)
    songs_in_room =  @songs.map {|song| song.title} ### loops over @songs and puts titles in array
    if songs_in_room.include?(song)
      return "Whoo! We have your favourite song"
    else return "Boooo"
    end
  end
end
