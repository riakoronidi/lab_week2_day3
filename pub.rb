class Pub

  attr_accessor :name, :till

  def initialize(name, till)
    @name = name
    @till = 0
    @drinks = []
  end

  def drink_count
    return @drinks.count()
  end


  def add_drink(drink)
    @drinks << drink
  end


  def serve_drink(drink)
    return @till += drink.price

  end
end
