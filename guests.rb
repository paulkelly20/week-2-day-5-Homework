class Guest
  attr_reader :name, :wallet, :fav_song

  def initialize(name, wallet, fav_song)
    @name = name
    @wallet = wallet
    @fav_song = fav_song
  end

  def pay_room_entry_fee(karaoke)
      @wallet -= karaoke.fee()
  end

end
