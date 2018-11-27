class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    #Access all memberships => [Memberships]
    #determine wheter or not the membership belongs to this gym (self)
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters_with_memberships
    name_array = []
    self.memberships.each do |membership|
      name_array << membership.lifter.name
    end
    name_array
  end

  def combined_lift_total
    combined_lifts = 0
    #find the lifters with memberships
    self.memberships.each do |membership|
      #add their lift_totals together
      combined_lifts += membership.lifter.lift_total
    end
    #return their combined_lift_totals
    combined_lifts
  end

end
