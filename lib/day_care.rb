class DayCare
  attr_reader :name, :customers

  def initialize(name)
    @name = name
    @customers = {}
  end

  def add_customer(customer)
    @customers[customer.id] = customer
  end
end
