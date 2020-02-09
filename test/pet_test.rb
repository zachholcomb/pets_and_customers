require 'minitest/autorun'
require 'minitest/pride'
require './lib/pet'

class PetTest < Minitest::Test
  def setup
    @samson = Pet.new({name: "Samson", type: :dog})
  end

  def test_it_exists_and_has_attributes
    assert_instance_of Pet, @samson
    assert_equal "Samson", @samson.name
    assert_equal :dog, @samson.type
  end

  def test_it_knows_if_its_been_fed_and_can_be_fed
    assert_equal false, @samson.fed?

    @samson.feed
    assert_equal true, @samson.fed?
  end
end
