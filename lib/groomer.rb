class Groomer
  attr_reader :name

  def initialize(name)
    @name = name
    @customers = {}
  end

  
end
