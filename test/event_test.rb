require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/food_truck'
require './lib/event'

class EventTest < Minitest::Test

  def test_it_exists_with_attributes
    event = Event.new("South Pearl Street Farmers Market")
    assert_instance_of Event, event
    assert_equal "South Pearl Street Farmers Market", event.name
  end

  def test_starts_with_no_food_trucks
    event = Event.new("South Pearl Street Farmers Market")
    assert_equal [], event.food_trucks
  end
end
