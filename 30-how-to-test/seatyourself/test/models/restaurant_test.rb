require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase

  def setup
    @valid_restaurant = Restaurant.new(name: "Chez Bitmaker", opening_hour: 10, closing_hour: 23)
  end

  def test_restaurant_is_invalid_without_name
    # arrange
    #restaurant = Restaurant.new(opening_hour: 10, closing_hour: 23)
    # act
    #was_it_valid = restaurant.valid?
    # assert
    #assert_equal(false, was_it_valid)

    #refute(Restaurant.new(opening_hour: 10, closing_hour: 23).valid?)

    #restaurant = Restaurant.create(opening_hour: 10, closing_hour: 23)
    # did_it_save = restaurant.save
    # refute(did_it_save)
    # invalid_restaurant = Restaurant.create(opening_hour: 10, closing_hour: 23)
    # refute_includes(Restaurant.all, invalid_restaurant)

    invalid_restaurant = Restaurant.create(opening_hour: 10, closing_hour: 23)
    assert_includes(invalid_restaurant.errors, :name)

  end

  def test_restaurant_is_invalid_without_opening_hour
    skip
  end

  def test_restaurant_is_invalid_without_closing_hour
    skip
  end

  def test_restaurant_is_available_when_empty_during_opening_hours
    skip
  end

  def test_restaurant_is_available_when_under_capacity_during_opening_hours
    skip
  end

  def test_restaurant_is_available_later_same_day
    skip
  end

  def test_restaurant_is_unavailable_in_the_past
    skip
  end

  def test_restaurant_is_unavailable_when_full
    skip
  end

  def test_restaurant_is_unavailable_before_opening
    skip
  end

  def test_restaurant_is_available_at_opening
    skip
  end

  def test_restaurant_is_unavailable_at_closing_time
    skip
  end

  def test_restaurant_is_unavailable_past_closing_time
    skip
  end

end
