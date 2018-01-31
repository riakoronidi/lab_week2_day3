require("minitest/autorun")
require("minitest/rg")

require_relative("../drink.rb")

class TestDrink < MiniTest::Test

  def setup
    @drink = Drink.new("gin", 5)
  end


  def test_get_price

    assert_equal(5, @drink.price)

  end
end
