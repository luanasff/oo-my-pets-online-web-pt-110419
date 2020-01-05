class Owner
 

 
    attr_reader   :name, :species
     
     
    @@all = []
 
    def initialize(name)
      @name = name
      @species = "human"
      @@all << self 
    end 
    
    
    
     def self.all 
       @@all 
     end 
    
    
    
     def self.count
        @@all.count
     end 
    
    
     def buy_cat(name)
       dog.cat = self 
     end 
    
    
     def buy_dog
        dog.owner = self 
       
     end 
    
    
end

