class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all=[]
  def initialize(species)
    @species=species
    @pets={fishes: [], cats: [], dogs: []}
    @@all<<self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each{|x| x.mood="happy"}
  end

  def play_with_cats
    @pets[:cats].each{|x| x.mood="happy"}
  end

  def feed_fish
    @pets[:fishes].each{|x| x.mood="happy"}
  end

  def sell_pets
    @pets.values.flatten.each{|x| x.mood="nervous"}
    @pets={fishes: [], cats: [], dogs: []}
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
  def self.all
    @@all
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    @@all=[]
  end
end
