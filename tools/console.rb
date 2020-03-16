require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

#Variables Gym
gym1 = Gym.new("Planet Fitness", "DC")
gym2 = Gym.new("WDSC", "VA")

#Variable Client
bob = Client.new("Bob",16)
jen = Client.new("Jen", 75)

#Variable Membership
student_discount = Membership.new(60,"1 year",gym1,bob)
summer = Membership.new(30, "3 months", gym1, bob)
fall = Membership.new(40,"3 months", gym2, jen)
lifting = Membership.new(100,"5 months", gym2, bob)

#Testing Methods-----------------------------------
p "Gym.all returns all gyms"



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
