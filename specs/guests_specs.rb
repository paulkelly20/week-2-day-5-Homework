require("minitest/autorun")
require_relative("../guests")
require_relative("../songs")
require_relative("../rooms")
require_relative("../karaoke")

class GuestTest < MiniTest::Test
  def setup
    @song1 = Song.new("Hey Jude", "Beatles")
    @song2 = Song.new("Crashland", "Twin Atlantic")
    @song3 = Song.new("Wonderwall", "Oasis")
    @room1 = Room.new("Party", 2)
    @room2 = Room.new("Pop", 1)
    @karaoke = Karaoke.new("Codeclan", 100, 10, @room1, @song1, @guest1)
    @guest1 = Guest.new("Billy", 100.0, "Wonderwall")
    @guest2 = Guest.new("Davie", 50.0, "Hey Jude")
    @guest3 = Guest.new("Stevie", 20.0, "Love me do")
  end

  def test_guests_name()
    assert_equal("Davie", @guest2.name)
  end

  def test_guests_wallet_amount()
    assert_equal(20.0, @guest3.wallet)
  end

  def test_guests_favourite_song()
    assert_equal("Hey Jude", @guest2.fav_song)
  end

  def test_guest_pays_room_fee()
    @guest1.pay_room_entry_fee(@karaoke)
    assert_equal(90, @guest1.wallet)
  end

end
