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

  private

  def all
    @@all
  end

  def count
    @@all.count
  end

  def reset_all
    @@all.clear
  end


end
