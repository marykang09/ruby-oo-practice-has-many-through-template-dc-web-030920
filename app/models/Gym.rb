
    class Gym

        attr_accessor :gym_name, :gym_location
        attr_reader :client
        @@all = []
    
        def initialize(gym_name,gym_location)
            @gym_name = gym_name
            @gym_location = gym_location 
            @@all << self
        end
    
        def self.all 
            @@all 
        end
    
        def memberships
            # here we wanna bring up all the memeberships that exist,
            # then ince we get that list we wanna bring up only the memberships that belongs to self(planetfitness)
            # doing Membership. all means we looking inside of other class to get some stuff
            # .gum == self means bring the gym instance
            Membership.all.select do |membership_instance|
                membership_instance.gym == self
            end
        end
        
        def clients 
            #we want every clients that go to the gym

            Membership.all.select do |membership_instance|
                membership_instance.gym == self
            end.select do |membership_instance|
                membership_instance.client
            end   
        end
    
        
    end
    