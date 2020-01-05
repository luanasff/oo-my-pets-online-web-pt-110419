class Owner
 

    
    attr_reader   :name, :species
     
     
    @@all = []
 
 
  # INSTANCE METHODS #name , #species , #say_species 
 
    def initialize(name)
      @name = name
      @species = "human"
      @@all << self 
    end 
    
    
     def say_species
       "I am a #{species}."
     end 
     
    
     def self.all 
       @@all 
     end 
    
    
    
     def self.count
        @@all.count
     end 
    
      
    def self.reset_all
       @@all.clear
    end 
    
    
      #ASSOCIATIONS !!!!!!!!!!!!!!
      
      
     def buy_cat(name)
       Cat.new(name,self) 
     end 
    
    
     def buy_dog(name)
        Dog.new(name,self) 
     end 
    
    def cats 
      Cat.all.select {|cat| cat.owner == self}  
    end 

    def dogs  
      Dog.all.select {|dog| dog.owner == self}  
    end 
    
    
     def walk_dogs
       Dog.all.each do |dog|
         dog.mood = "happy"
       end 
    end 
    
    
    def feed_cats 
      Cat.all.each do |cat|
        cat.mood = "happy"
      end 
    end 
    
    
     def sell_pets
      Cat.all.each do |cat|
        cat.mood = "nervous"
        cat.owner = nil
     end
      Dog.all.each do |dog|
        dog.mood = "nervous"
        dog.owner = nil
      end
    end

        
      
    def list_pets
      p "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)." 
    end 
    
    
end

