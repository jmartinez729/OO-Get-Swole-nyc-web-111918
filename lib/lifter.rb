class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self

  end

  def memberships
    #Access membership => [memberships]
    #Select all memberships for specific member
    Membership.all.select do |membership|
      #compare whether or not lifter property == this lifter
      membership.lifter == self
    end
  end #returns Array of memberships

  def gyms
    #Access the Memberships.all array
    #Determine whether or not the memberships are mine/lifters
    my_memberships = self.memberships
    #create array of gyms from the memberships array
    my_memberships.map do |membership|
      membership.gym
    end
  end #returns Array of gyms

  def self.all #get a list of all lifters
    @@all
  end

  def self.average_lifts
    combined_lift = 0
    #take all of the lifters
    self.all.each do |lifter|
      #add their lift_total to a variable
      combined_lift += lifter.lift_total
    end
    combined_lift / self.all.count
    #divide that variable by the number of lifters
  end

  def total_cost_of_memberships
    total_cost = 0
    self.memberships.each do |membership|
      total_cost += membership.cost
    end
    total_cost
  end

                  #Gym instance, membership cost
  def sign_up_for_gym(gym, membership_cost)
    membership = Membership.new(membership_cost, self, gym)
  end


end
