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
    
    
     def add_cat(cat)
       cat.owner = self 
     end 
    
    
     def buy_dog(name)
        dog.new = self 
       
     end 
    
    
end

