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
    
      
    def self.reset_all
       @@all.reset_all
    end 
    
    
    
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
    
    
    
    
end

