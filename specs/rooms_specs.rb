require("minitest/autorun")
require_relative("../rooms")
require_relative("../songs")
require_relative("../guests")

class RoomTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Billy", 100.0)
    @guest2 = Guest.new("Davie", 50.0)
    @guest3 = Guest.new("Stevie", 20.0)
    @guest4 = Guest.new("Pam", 0)
    @song1 = Song.new("Hey Jude", "Beatles")
    @song2 = Song.new("Crashland", "Twin Atlantic")
    @song3 = Song.new("Wonderwall", "Oasis")
    @song_list = [@song1, @song2, @song3]
    @room1 = Room.new("Party", 2)
    @room2 = Room.new("Pop", 1)

  end

  def test_room_1_room_name
    assert_equal("Party", @room1.name)
  end

  def test_checking_no_guests_in_room
    assert_equal(0, @room1.checking_guests_in_room())
  end

  def test_add_guests_to_room
    @room1.add_guests_to_room(@guest1)
    @room1.add_guests_to_room(@guest2)
    assert_equal(2, @room1.checking_guests_in_room())
  end

  def test_checking_no_songs_in_room
    assert_equal(0, @room1.checking_songs_in_room())
  end

  def test_removing_people_from_room
    @room1.add_guests_to_room(@guest1)
    assert_equal(0, @room1.remove_guest_from_room())
  end

  def test_add_songs_to_room
    @room1.add_songs_to_room(@song1)
    @room1.add_songs_to_room(@song2)
    assert_equal(2, @room1.checking_songs_in_room())
  end

  def test_room_capacity
    assert_equal(2, @room1.capacity)
  end

  def test_add_guests_to_room_capacity_full
    @room1.add_guests_to_room(@guest1)
    @room1.add_guests_to_room(@guest2)
    @room1.add_guests_to_room(@guest2)
    assert_equal(2, @room1.checking_guests_in_room())
  end




  # def test_room_capacity_exceeded()
  #   assert_equal()

end
