class Customers

  attr_accessor :name, :amount

  def initialize(name, amount)
    @name = name
    @amount = 50
  end

  def buy_drink(drink)
    return @amount -= drink.price
  end

end
