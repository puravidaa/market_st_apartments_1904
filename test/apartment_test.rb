require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'

class ApartmentTest < Minitest::Test

  def setup
    @a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  end

  def test_it_exists
    assert_instance_of Apartment, @a1
  end

  def test_it_has_attributes
    assert_equal "A1", @a1.number
    assert_equal 1200, @a1.monthly_rent 
    assert_equal 1, @a1.bathrooms
    assert_equal 1, @a1.bedrooms
  end
end
