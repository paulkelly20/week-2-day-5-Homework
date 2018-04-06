require("minitest/autorun")
require_relative("../rooms")
require_relative("../songs")
require_relative("../guests")
require_relative("../karaoke")

class KaraokeTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Billy", 100.0, "Wonderwall")
    @guest2 = Guest.new("Davie", 50.0, "Hey Jude")
    @song1 = Song.new("Hey Jude", "Beatles")
    @song2 = Song.new("Crashland", "Twin Atlantic")
    @song3 = Song.new("Wonderwall", "Oasis")
    @room1 = Room.new("Party", 2)
    @room2 = Room.new("Pop", 1)
    @karaoke = Karaoke.new("Codeclan", 100, 10, @room1, @song1, @guest1)

  end

  def test_karaoke_name
      assert_equal("Codeclan", @karaoke.name)
  end

  def
  def test_entry_fee
    assert_equal(10, @karaoke.fee)
  end

  def test_customer_pays_entry_fee
    @karaoke.pay_entry_fee(@guest1.wallet)
    assert_equal(110, @karaoke.till())
  end

end
