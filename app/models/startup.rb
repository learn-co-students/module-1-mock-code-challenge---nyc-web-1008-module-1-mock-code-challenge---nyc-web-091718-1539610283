class Startup

  attr_reader :founder, :domain
  attr_accessor :name, :startup

  @@all = []
  @@funding_rounds = []
  @@investments = 0

  def initialize(founder, domain, name)
    @founder = founder
    @domain = domain
    @name = name
    @@all << self
  end

  def pivot(domain, name)
    @domain = domain
    @name = name
  end

  def self.all
    @@all
  end

  def self.find_by_founder(name)
    @@all.select do |founder|
      founder.name
    end
  end

  def self.domains
    @@all.map do |startup|
      startup.domain
    end
  end

  def sign_contract(venture_capitalist, type, investment)
    #creates a new funding round
    funding_round = FundingRound.new(name, type, investment)
    #associates it with that startup and venture capitalist
    funding_round.name = venture_capitalist
    @@funding_rounds << funding_round
    @@investments += investment
  end

  def funding_rounds
    #Returns the total number of funding rounds that the startup has gotten
    @@funding_rounds.size
  end

  def total_funds
    #Returns the total sum of investments that the startup has gotten
    @@investments
  end

  def big_investors
  end



end

# - `Startup#sign_contract`
#   - given a **venture capitalist object**, type of investment (as a string), and the amount invested (as a float),
#   creates a new funding round and associates it with that startup and venture capitalist.
# - `Startup#num_funding_rounds`
#   - Returns the total number of funding rounds that the startup has gotten
# - `Startup#total_funds`
#   - Returns the total sum of investments that the startup has gotten
# - `Startup#investors`
#   - Returns a **unique** array of all the venture capitalists that have invested in this company
# - `Startup#big_investors`
#   - Returns a **unique** array of all the venture capitalists that have invested in this company and are in the Trés Commas club
#
# - `Startup#name`
#   - returns a **string** that is the startup's name
# - `Startup#founder`
#   - returns a **string** that is the founder's name
#   - Once a startup is created, the founder cannot be changed.
# - `Startup#domain`
#   - returns a **string** that is the startup's domain
#   - Once a startup is created, the domain cannot be changed.
# - `Startup#pivot`
#   - given a string of a **domain** and a string of a **name**, change the domain and name of the startup
# - `Startup.all`
#   - should return **all** of the startup instances
# - `Startup.find_by_founder`
#   - given a string of a **founder's name**, returns the **first startup** whose founder's name matches
# - `Startup.domains`
#   - should return an **array** of all of the different startup domains
