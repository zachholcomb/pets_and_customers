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
  end
end





# pry(main)> joel.name
# # => "Joel"
#
# pry(main)> joel.id
# # => 2
#
# pry(main)> joel.pets
# # => []
#
# pry(main)>
# # => #<Pet:0x00007ff8dc1f86a0...>
#
# pry(main)>
# # => #<Pet:0x00007ff8dc93e108...>
#
# pry(main)> joel.adopt(samson)
#
# pry(main)> joel.adopt(lucy)
#
# pry(main)> joel.pets
# # => [#<Pet:0x00007ff8dc1f86a0...>, #<Pet:0x00007ff8dc93e108...>]
#
# pry(main)> joel.outstanding_balance
# # => 0
#
# pry(main)> joel.charge(15)
#
# pry(main)> joel.charge(7)
#
# pry(main)> joel.outstanding_balance
# # => 22
