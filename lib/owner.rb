class Owner
  def initialize(name)
    @species = "human"
    @name = name
    @@owners << self
  end

  #Variables
  @@owners = []

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
    @@owners.count
  end

  #methods
  def reset_all
    @@owners.clear
  end


end
