 class Dog 
 
 
   attr_accessor :owner, :mood 
   attr_reader :name 
   
      @@all = [] 

    def initialize(name, owner)
      @name = name 
      @mood = "nervous" 
      @owner = owner 
      save 
    end

    def save 
      @@all << self 
    end 

    def self.all 
      @@all
    end 

end