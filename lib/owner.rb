class Owner
 

 
    attr_reader   :name, :species
     
     
    @@all = []
 
    def initialize(name)
      @name = name
      @species = "human"
      @@all << self 
      save
      
     end 
    
    
    
     def buy_cat(name)
    
     end 
    
    
     def buy_dog
       
     end 
    
    
end

