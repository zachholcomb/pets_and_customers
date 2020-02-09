require 'minitest/autorun'
require 'minitest/pride'
require './lib/pet'
require './lib/customer'
require './lib/day_care'

class DayCareTest < Minitest::Test
  def setup
    @paw_paw = DayCare.new("Paw Paw")
    @joel = Customer.new("Joel", 2)
    @zach = Customer.new("Zach", 3)
    @samantha = Pet.new({name: "Samantha", type: :dog})
    @samson = Pet.new({name: "Samson", type: :dog})
    @lucy = Pet.new({name: "Lucy", type: :cat})
  end

  def test_it_exists_and_has_attributes
    assert_instance_of DayCare, @paw_paw
    assert_equal "Paw Paw", @paw_paw.name
  end

  def test_it_intializes_with_empty_customers
    test_hash = {}
    assert_equal test_hash, @paw_paw.customers
  end

  def test_it_can_add_customers
    test_hash ={2 => @joel, 3 => @zach}
    @paw_paw.add_customer(@joel)
    @paw_paw.add_customer(@zach)
    assert_equal test_hash, @paw_paw.customers
    assert_equal @joel, @paw_paw.customers[2]
    assert_equal @zach, @paw_paw.customers[3]
  end

  def test_it_can_list_all_pets_unfed
    @paw_paw.add_customer(@joel)
    @paw_paw.add_customer(@zach)
    @joel.adopt(@samson)
    @joel.adopt(@lucy)
    @zach.adopt(@samantha)
    assert_equal [@samson, @lucy, @samantha], @paw_paw.list_unfed_pets
  end
end
