class Owner
  def initialize(name)
    @species = "human"
    @name = name
    @@all << self
  end

  #Variables
  @@self = []

  def name
    @name
  end

  def species
    @species
  end

  def species=(species)
    @species.dup.freeze
  end

  def count
    @@self.count
  end

  #methods
  def reset_all
    @@self.clear
  end


end
