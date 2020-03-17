
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
        Membership.all.select{|mi|mi.client==self}.collect{|mi|mi.gym}
    end

    def memberships
    #example: bob.memberships should return an array of all memberships that belong to bob
        binding.pry
        Membership.all.select{|mi|mi.client==self}
    end
end
