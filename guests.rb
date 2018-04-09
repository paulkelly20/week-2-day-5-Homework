class Guest
  attr_reader :name, :wallet, :fav_song

  def initialize(name, wallet, fav_song)
    @name = name
    @wallet = wallet
    @fav_song = fav_song
    @stomach = []
    @tab = 0
  end

  def pay_room_entry_fee(karaoke)
    @wallet -= karaoke.fee()
  end

  def getter_for_guest_stomach()
    return @stomach.count
  end

  def buy_from_bar(item)
    @stomach << item
  end

  def buy_from_bar_into_tab(item)
    @tab += item
    @wallet -= @tab
  end

end
