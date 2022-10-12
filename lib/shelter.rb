class Shelter
  attr_reader :name,
              :capacity,
              :pets
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @pets = []
  end
  
  def add_pet(name)
    @pets = pets
    pets << name
  end
  
  def call_pets
    pets.map do |pet| "#{pet}!"
    end
  end
  
  def over_capacity?
    if pets.count > self.capacity
      true
    else
      false
    end
  end
  
  def adopt
    until pets.count <= self.capacity
      if pets.count > self.capacity
        pets.shift
      end
    end
  end
end