require 'minitest/autorun'
require 'minitest/pride'
require './lib/pet'
require './lib/customer'
require './lib/groomer'

class GroomerTest < Minitest::Test
  def setup
    @pretty_paw = Groomer.new("Pretty Paw")
    @joel = Customer.new("Joel", 2)
    @zach = Customer.new("Zach", 3)
    @samantha = Pet.new({name: "Samantha", type: :dog})
    @samson = Pet.new({name: "Samson", type: :dog})
    @lucy = Pet.new({name: "Lucy", type: :cat})
  end

  def test_it_exists_and_has_attributes
    assert_instance_of Groomer, @pretty_paw
    assert_equal "Pretty Paw", @pretty_paw.name
  end

  def test_it_starts_with_no_customers
    test_hash = {}
    assert_equal test_hash, @pretty_paw.customers
  end

  def test_it_can_add_customers
    @pretty_paw.add_customer(@zach)
    @pretty_paw.add_customer(@joel)
    test_hash = {3 => @zach, 2 => @joel}
    assert_equal test_hash, @pretty_paw.customers
    assert_equal @pretty_paw.customers[2], @joel
    assert_equal @pretty_paw.customers[3], @zach
  end

  def test_it_can_find_all_the_customers_with_outstanding_balances
    @pretty_paw.add_customer(@joel)
    @pretty_paw.add_customer(@zach)
    @joel.charge(100)
    assert_equal [@joel], @pretty_paw.customers_with_outstanding_balances
  end
end
