require("minitest/autorun")

require_relative("../bar.rb")
require_relative("../guests.rb")

class BarTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Dave", 100.0, "Wonderwall")
    @beer = Bar.new("Beer", 4.0)
    @wine = Bar.new("Wine", 6.0)
    @vodka = Bar.new("Vodka", 4.0)
    @burger = Bar.new("Burger", 8.0)
    @nachos = Bar.new("Nachos", 6.0)
  end

  def test_drink__beer()
    assert_equal("Beer", @beer.name)
  end

  def test_food__nachos()
    assert_equal("Nachos", @nachos.name)
  end

  def test_price()
    assert_equal(8, @burger.price)
  end

end
