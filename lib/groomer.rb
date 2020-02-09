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
end
