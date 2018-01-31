require("minitest/autorun")
require("minitest/rg")

require_relative("../pub.rb")
require_relative("../drink.rb")

class TestPub < MiniTest::Test

  def setup
    @pub = Pub.new("McCulls", 0)
  end

  def test_add_drink
    drink = Drink.new("gin", 5)
    @pub.add_drink(drink)
    assert_equal(1, @pub.drink_count())
  end

  def test_serve_drink
    drink = Drink.new("gin", 5)
    @pub.serve_drink(drink)
    assert_equal(5, @pub.till)
  end

end
