class Pet
  attr_reader :name, :type

  def initialize(pet_info)
    @pet_info = pet_info
    @name = pet_info[:name]
    @type = pet_info[:type]
    @has_eaten = false
  end

  def fed?
    @has_eaten
  end

  def feed
    @has_eaten = true
  end
end
