

class Startup
  # - `Startup#founder`
  #   - returns a **string** that is the founder's name
  #   - Once a startup is created, the founder cannot be changed.

# - returns a **string** that is the startup's name
#- returns total funds

  attr_reader :founder
  attr_accessor :num_funding_rounds :name, :domain, :total_funds

  @@all = []

# should return **all** of the startup instances
  def self.all
    @@all
  end

# given a string of a **founder's name**, returns the **first startup** whose founder's name matches
  def self.find_by_founder(name)
    self.all.find { |co| co.founder == name }
  end

# should return an **array** of all of the different startup domains
  def self.domain
    self.all.select { |dom| dom.domain }
  end

  def initialize(name)
    @name = name
    @num_funding_rounds = 0
    @total_funds = 0
    @@all << self
  end

# given a string of a **domain** and a string of a **name**, change the domain and name of the startup
  def pivot(domain, name)
    @domain = domain
    @name = name
  end

 # given a **venture capitalist object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
  def sign_contract(venture_capitalist_obj, investment_type, amount)
    round = FundingRound.new(self, investment_type, amount, venture_capitalist_obj)
    round.startup = self
    round.venture_capitalist = venture_capitalist_obj
    @num_funding_rounds += 1
    @total_funds += amount
  end

# Returns the total number of funding rounds that the startup has gotten
  def num_funding_rounds
    self.startup_count
  end

# Returns a **unique** array of all the venture capitalists that have invested in this company
  def investors
    investing = FundingRound.all.select { |invest| invest.startup = self }
    investing.all.map { |invest| invest.venture_capitalist }
  end

# - Returns a **unique** array of all the venture capitalists that have invested in this company and are in the Trés Commas club
  def big_investors
    arr = investors
    arr.all.select { |invest| VentureCapitalist.tres_commas(invest.name) }
  end

end
