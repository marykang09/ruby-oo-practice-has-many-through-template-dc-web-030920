
class Membership

    attr_reader :price, :duration, :gym, :client
    @@all = []
    
    def initialize(price,duration,gym,client)
        @price = price
        @duration = duration
        @gym = gym
        @client = client
        @@all << self
    end

    def self.all 
        @@all 
    end

    
    

    
    
    
end
