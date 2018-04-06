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


end
