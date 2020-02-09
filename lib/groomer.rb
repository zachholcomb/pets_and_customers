class Groomer
  attr_reader :name, :customers

  def initialize(name)
    @name = name
    @customers = {}
  end

  def add_customer(new_customer)
    @customers[new_customer.id] = new_customer
  end

  def customers_with_outstanding_balances
    customers_with_balances = []
    @customers.each do |id, customer|
      if customer.outstanding_balance > 0
        customers_with_balances << customer
      end
    end
    customers_with_balances
  end

  def count_pets(pet_type)
    pets_by_type = []
    @customers.each do |id, customer|
      customer.pets.each do |pet|
        if pet.type == pet_type
          pets_by_type << pet
        end
      end
    end
    pets_by_type.length
  end
end
