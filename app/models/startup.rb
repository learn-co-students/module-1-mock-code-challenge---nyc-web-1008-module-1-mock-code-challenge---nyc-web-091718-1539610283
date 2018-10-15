class Startup
  #has many VentureCapitalist THROUGH FundingRound
  attr_accessor :name, :domain
  attr_reader :founder
  # - `Startup#name`
  #   - returns a **string** that is the startup's name
  # - `Startup#founder`
  #   - returns a **string** that is the founder's name
  #   - Once a startup is created, the founder cannot be changed.
  # - `Startup#domain`
  #   - returns a **string** that is the startup's domain
  #   - Once a startup is created, the domain cannot be changed.

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def pivot(domain, name)
    self.name = name
    self.domain = domain
  end
  # - `Startup#pivot`
  #   # - given a string of a **domain** and a string of a **name**, change the domain and name of the startup


#GO BACK TO BELOW!!!!!!!!!!!!!!!!
  def self.find_by_founder(founder_name)
    found_instance = ""
    self.all.select do |instance|
      instance.founder == founder_name
        found_instance = instance
    end
    return found_instance.first
  end


  def self.domains
  startup_domains = []
    self.all.each do |instance|
      startup_domains << instance.domain
    end
  end


# FundingRound initialize(startup, venture_capitalist, type, amount)
  def sign_contract(venture_capitalist, type, amount)
    funding_round = FundingRound.new(self, venture_capitalist, type, amount)
    @@all << self
  end

  def num_funding_rounds
    self_funding = FundingRound.all.select do |instance|
      intance.startup == self
    end
    self_funding.count
  end

  def total_funds
    total_funds = 0
    FundingRound.all.each do |intance|
      total_funds += intance.amount
     end
  end

  def investors
    # self.all.select do |intance|
    #   intance.venture_capitalist.uniq
    # end
  end


end
