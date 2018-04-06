require("minitest/autorun")
require_relative("../songs")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Hey Jude", "Beatles")
    @song2 = Song.new("Crashland", "Twin Atlantic")
    @song3 = Song.new("Wonderwall", "Oasis")
  end

  def test_song_has_title
    assert_equal("Hey Jude", @song1.title())
  end

  def test_song_has_artist
    assert_equal("Beatles", @song1.artist())
  end

end
