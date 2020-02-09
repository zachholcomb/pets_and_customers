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

end
