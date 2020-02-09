class DayCare
  attr_reader :name, :customers

  def initialize(name)
    @name = name
    @customers = {}
  end

  def add_customer(customer)
    @customers[customer.id] = customer
  end

  def list_unfed_pets
    unfed_pets = []
    @customers.each do |id, customer|
      customer.pets.each do |pet|
          if !pet.fed?
            unfed_pets << pet
          end
      end
    end
    unfed_pets
  end
end
