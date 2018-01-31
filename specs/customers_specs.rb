require("minitest/autorun")
require("minitest/rg")

require_relative("../customers.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")

class TestCustomer < MiniTest::Test

  def setup
    @customer = Customers.new("Chris", 50)
  end

  # def test_buy_drink
  #   drink = Drink.new("whiskey", 10)
  #   @customer.buy_drink(drink)
  #   assert_equal(40, @customer.amount)
  # end

  def test_buy_drink_from_pub
    pub = Pub.new("McCulls", 0)
    drink = Drink.new("gin", 5)

    @customer.buy_drink(drink)
    pub.serve_drink(drink)

    assert_equal(45, @customer.amount)
    assert_equal(5, pub.till)

  end

end
