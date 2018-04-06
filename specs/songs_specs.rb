require("minitest/autorun")
require_relative("../songs")

class SongsTest < MiniTest::Test

  def setup
    @song1 = Songs.new("Hey Jude", "Beatles")
    @song2 = Songs.new("Crashland", "Twin Atlantic")
    @song3 = Songs.new("Wonderwall", "Oasis")
  end

  def test_song_has_title
    assert_equal("Hey Jude", @song1.title())
  end

  def test_song_has_artist
    assert_equal("Beatles", @song1.artist())
  end

end
