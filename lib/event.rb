class Event
  attr_reader :name,
              :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item)
    available_at = []
    @food_trucks.map do |food_truck|
      if food_truck.check_stock(item) != 0
        available_at << food_truck
      end
    end
    available_at
  end

  def total_inventory
  end 
end
