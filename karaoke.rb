class Karaoke
  attr_reader :name, :till, :fee

  def initialize(name, till, fee, rooms, songs, guests)
    @name = name
    @till = till
    @fee = fee
    @rooms = rooms
    @songs = songs
    @guests = guests

  end

  def pay_entry_fee(guest_wallet)
     if guest_wallet > @fee
       @till += @fee
     end
  end


end
