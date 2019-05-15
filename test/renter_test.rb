require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'


class RenterTest < Minitest::Test
  def setup
    @jessie = Renter.new("Jessie")
    @a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  end

  def test_it_exists
    assert_instance_of Renter, @jessie
  end

  def test_it_has_a_name
    assert_equal "Jessie", @jessie.name
  end

  def test_apartment_has_renter
    # assert_equal nil, @a1.renter
    @a1.add_renter(@jessie)
    assert_equal @jessie, @renter.add_renter
  end

end
