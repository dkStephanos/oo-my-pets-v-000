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
    @species.dup.freeze
  end

  def self.all
    @@all
  end

  def count
    @@all.count
  end

  #methods
  def reset_all
    @@all.clear
  end


end
