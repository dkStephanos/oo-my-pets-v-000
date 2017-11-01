class Owner
  def initialize(name)
    @species = "human"
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  #Variables
  @@all = []

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def pets
    @pets
  end

  def pets=(pets)
    @pets = pets
  end

  def species
    @species
  end

  def species=(species)
    whoops
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

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."

end
