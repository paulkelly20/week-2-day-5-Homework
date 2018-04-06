require("minitest/autorun")
require_relative("../guests")

class GuestTest < MiniTest::Test
  def setup
    @customer1 = Guest.new("Billy", 100.0)
    @customer2 = Guest.new("Davie", 50.0)
    @customer3 = Guest.new("Stevie", 20.0)
  end

  def test_customer_name()
    assert_equal("Davie", @customer2.name)
  end

  def test_customer_wallet_amount()
    assert_equal(20.0, @customer3.wallet)
  end



end
