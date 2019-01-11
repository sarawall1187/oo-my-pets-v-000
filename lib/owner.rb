require "pry"
class Owner
  attr_reader :species
  attr_accessor :pets, :name
  
  @@all = []
  @@count = 0
 
 def initialize(species)
   @species = species
   @pets = {
     fishes: [],
     cats: [],
     dogs: []
   }
   @@all << self
   @@count += 1
 end
 
 def self.all
   @@all
 end

 def self.count 
  @@count 
 end
 
 def self.reset_all
   @@all.clear
   @@count = 0 
 end
 
 def say_species
   "I am a #{@species}."
 end
 
 def buy_fish(fish_name)
   fish = Fish.new(fish_name)
   @pets[:fishes] << fish
 end
 
 def buy_cat(cat_name)
   cat = Cat.new(cat_name)
   @pets[:cats] << cat
 end
 
 def buy_dog(dog_name)
   dog = Dog.new(dog_name)
   @pets[:dogs] << dog
 end
 
 def walk_dogs
   @pets[:dogs].each {|dog| dog.mood = "happy"}
 end
 
 def play_with_cats
   @pets[:cats].each {|cat| cat.mood = "happy"}
 end
 
 def feed_fish
   @pets[:fishes].each {|fish| fish.mood = "happy"}
 end
 
 def sell_pets
   @pets.each {|key, array_of_pets| array_of_pets.each {|pet| pet.mood = "nervous"}}
   @pets = {
     fishes: [],
     cats: [],
     dogs: []
   }
   end
   
   def list_pets
     "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
   end
 
end