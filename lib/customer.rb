class Customer
  attr_reader :name, :id, :pets

  def initialize(name,id)
    @name = name
    @id = id
    @pets = []
    @customer_balance = 0
  end

  def adopt(pet)
    @pets << pet
  end

  def outstanding_balance
    @customer_balance
  end

  def charge(charge_amount)
    @customer_balance += charge_amount
  end
end
