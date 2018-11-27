# require_relative '../config/environment.rb'
require 'pry'
require_relative '../lib/gym.rb'
require_relative '../lib/lifter.rb'
require_relative '../lib/membership.rb'

# def reload
#   load 'config/environment.rb'
# end
                  #(name, lift_total)
l1 = Lifter.new("John", 200)
l2 = Lifter.new("Peter", 150)
l3 = Lifter.new("Tanya", 225)
                  #name
g1 = Gym.new("24 Hour Fitness")
g2 = Gym.new("NYSC")
g3 = Gym.new("HRC")
                              #(cost, lifter, gym)
m1 = Membership.new(40, l3, g1)
m2 = Membership.new(81, l1, g2)
m3 = Membership.new(15, l2, g3)
m4 = Membership.new(15, l1, g3)


binding.pry

 puts "amazing"
