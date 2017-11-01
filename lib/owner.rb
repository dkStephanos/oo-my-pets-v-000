class Owner
  def initialize(name)
    @species = "human"
    @name = name
    @@all << self
  end

  #Variables
  @@all = []

  def name
    @name
  end

  def species
    @species
  end

  def species=(species)
    throw TypeError
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  #methods
  def self.reset_all
    @@all.clear
  end


end
