class FoodTruck
  attr_reader :name,
              :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    @inventory.fetch(item, 0)
  end

  def stock(item, quantity)
    if check_stock(item) == 0
      @inventory[item] = quantity
    else
      @inventory[item] = (check_stock(item) + quantity)
    end
  end

  def potential_revenue
    @inventory.map do |item, quantity|
      # require "pry"; binding.pry
      item.price * quantity
    end.sum
  end

end
