
class Client
    attr_reader :name, :age
    @@all = []
    
    def initialize(name,age)         
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def gym 
        # we looking all of the gym instances that this client go to
        # we wanna go to  the clients and look at the gym name


    end

    
end
