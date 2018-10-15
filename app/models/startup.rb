class Startup
  # Startup#name
  # returns a string that is the startup's name
  # Startup#founder
  # returns a string that is the founder's name
  # Once a startup is created, the founder cannot be changed.
  # Startup#domain
  # returns a string that is the startup's domain
  # Once a startup is created, the domain cannot be changed.

  attr_accessor :name
  attr_reader :founder, :domain

  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  #Sign_contract
  # given a venture capitalist object, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
  def sign_contract(venture_capitalist, investment_type, investment_amount)
    FundingRound.new(self, venture_capitalist, investment_type, investment_amount)
  end

  def funding_rounds
    FundingRound.all.select {|round| round.startup == self}
  end
  #num_funding_rounds
  # Returns the total number of funding rounds that the startup has gotten
  def num_funding_rounds
    funding_rounds.count
  end

  #total_funds
  # Returns the total sum of investments that the startup has gotten
  def total_funds
    total = 0.0
    funding_rounds.each {|round| total += round.investment}
  end
  #investors
  # Returns a unique array of all the venture capitalists that have invested in this company
  def investors
    funding_rounds.uniq {|round| round.venture_capitalist}
  end 
  # Startup#big_investors
  # Returns a unique array of all the venture capitalists that have invested in this company and are in the Trés Commas club

  # Startup#pivot
  # given a string of a domain and a string of a name, change the domain and name of the startup
  def pivot(domain, name)
    self.domain = domain
    self.name = name

  end
  # Startup.all
  # should return all of the startup instances
  def self.all
    @@all
  end

  # Startup.find_by_founder
  # given a string of a founder's name, returns the first startup whose founder's name matches
  def self.find_by_founder(founder)
    @@all.find {|startup| startup.founder == founder}
  end

  # Startup.domains
  # should return an array of all of the different startup domains

  def self.domains
    @@all.map {|startup| startup.domain}\
  end

end
