require 'pry'
class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets
@@all = []
 def initialize(species)
   @@all << self
   @species = species
   @pets = {:fishes => [], :dogs => [], :cats => []}
 end
  def self.reset_all
    @@all.clear
  end

  def self.count
     @@all.count
  end
 def self.all
   @@all
 end
 def say_species
   "I am a #{@species}."
 end
 def buy_fish(name)
   new_fish = Fish.new(name)
   @pets[:fishes] << new_fish
   #binding.pry
 end
 def buy_cat(name)
  new_cat = Cat.new(name)
  @pets[:cats] << new_cat
end
def buy_dog(name)
 new_dog = Dog.new(name)
 @pets[:dogs] << new_dog
end
def walk_dogs
  @pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
end
def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end
def feed_fish
  @pets[:fishes].each do |fish|
    fish.mood = "happy"
  end
end
def sell_pets
  @pets.each do |species, animals|
    animals.each do |animal|
      animal.mood = "nervous"
    end
  end
  #.clear reset the hash
  #to 0 count so it is a empty hash
  @pets.clear


end

def list_pets
  "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."

end
end
