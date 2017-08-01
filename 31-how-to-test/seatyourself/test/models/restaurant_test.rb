require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase

  def test_restaurant_is_invalid_without_name
    # arrange
    @restaurant = Restaurant.new(opening_hour: 10, closing_hour: 23, address: "220 king st west, toronto")

    # act
    result = @restaurant.valid?

    # assert
    assert_equal(result, false)
  end

  def test_restaurant_is_invalid_without_address
    @restaurant = Restaurant.new(opening_hour: 10, closing_hour: 23, name: "Chez Bitmaker")

    result = @restaurant.valid?

    assert_equal(result, false)
  end

  def test_restaurant_is_invalid_without_opening_hour
    # arrange
    @restaurant = Restaurant.new(closing_hour: 23, name: "Chez Bitmaker", address: "123 King")

    # act
    is_restaurant_valid = @restaurant.valid?

    # assert
    assert_equal(is_restaurant_valid, false)
  end

  def test_restaurant_is_invalid_without_closing_hour
    # arrange
    @restaurant = Restaurant.new(opening_hour: 9, name: "Chez Bitmaker", address: "123 King st west")

    # act
    is_restaurant_valid = @restaurant.valid?

    # assert
    assert_equal(is_restaurant_valid, false)

  end

  def test_restaurant_is_unavailable_in_the_past
    # arrange
    @restaurant = Restaurant.new(name: "Bitmaker", address: "220 King", opening_hour: 10, closing_hour: 23)
    date_in_past = DateTime.new(2015, 01, 01)
    reasonable_party_size = 2

    # act
    result = @restaurant.available?(date_in_past, reasonable_party_size)

    # assert
    assert_equal(false, result)
  end


  def test_restaurant_is_available_when_empty_during_opening_hours_in_future
    # arrange
    @restaurant = Restaurant.new(name: "Bitmaker", opening_hour: 10, closing_hour: 23, address: "220 king")
    future_date_in_resto_hours = 1.day.from_now.beginning_of_day + 20.hour
    reasonable_party_size = 2


    # act
    # result = @restaurant.date_in_future?(future_date_in_resto_hours)
    result = @restaurant.available?(future_date_in_resto_hours, reasonable_party_size)

    # assert
    assert_equal(true, result)
  end

  def test_restaurant_is_unavailable_when_full
    # arrange
    @restaurant = Restaurant.create(capacity: 50, name: "Bitmaker", opening_hour: 10, closing_hour: 23, address: "220 king")
    @user = User.create(name: "Mary", email: "mary@gmail.com" )
    tomorrow_eight_oclock = 1.day.from_now.beginning_of_day + 20.hours
    reservations = Reservation.create(begin_time: tomorrow_eight_oclock, restaurant_id: @restaurant.id, user_id: @user.id, people: 50)

    #new reservation
    date = 1.day.from_now.beginning_of_day + 20.hours
    reasonable_party_size = 2

    # act
    result = @restaurant.available?(date, reasonable_party_size)

    # assert
    assert_equal( false , result)
  end

  def test_restaurant_is_available_when_under_capacity_during_opening_hours
  end

  def test_restaurant_is_available_later_same_day
  end


  def test_restaurant_is_unavailable_before_opening
  end

  def test_restaurant_is_available_at_opening
  end

  def test_restaurant_is_unavailable_at_closing_time
  end

  def test_restaurant_is_unavailable_past_closing_time
  end

end
