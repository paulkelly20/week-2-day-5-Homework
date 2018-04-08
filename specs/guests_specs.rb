require("minitest/autorun")
require_relative("../guests")

class GuestTest < MiniTest::Test
  def setup
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
end
