require 'minitest/autorun'
require 'minitest/pride'
require './lib/pet'
require './lib/customer'

class CustomerTest < Minitest::Test
  def setup
    @joel = Customer.new("Joel", 2)
    @samson = Pet.new({name: "Samson", type: :dog})
    @lucy = Pet.new({name: "Lucy", type: :cat})
  end

  def test_it_exists_and_has_attributes
    assert_instance_of Customer, @joel
    assert_equal "Joel", @joel.name
    assert_equal 2, @joel.id
  end

  def test_it_starts_with_empty_pets
    assert_equal [], @joel.pets
  end

  def test_it_can_adopt_pets
    @joel.adopt(@samson)
    @joel.adopt(@lucy)
    assert_equal [@samson, @lucy], @joel.pets
  end

  def test_it_starts_with_empty_outstanding_balance
    assert_equal 0, @joel.outstanding_balance
  end

  def test_it_can_charge_and_it_affects_outstanding_balance
    assert_equal 0, @joel.outstanding_balance

    @joel.charge(15)
    assert_equal 15, @joel.outstanding_balance

    @joel.charge(7)
    assert_equal 22, @joel.outstanding_balance
  end
end
