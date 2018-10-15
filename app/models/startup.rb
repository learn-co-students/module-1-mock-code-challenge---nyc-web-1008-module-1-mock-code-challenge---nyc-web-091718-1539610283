class Startup

  attr_accessor :domain, :name
  attr_reader :founder

  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @investors_list = []
    @funds_received = 0.0
    @@all << self
  end

  def self.all
    @@all
  end

  #matches string argument to initialization argument
  def self.find_by_founder(name)
    @@all.find {|startups| startups.founder == name}
  end

  #iterates over all startups, selecting all the domains and returning only unique items
  def self.domains
    domains = []
    @@all.each {|startup| domains << startup.domain}
      domains
  end

  #sets a new domain and name for the instance variables related to Start class
  def pivot(new_domain, new_name)
    self.domain = new_domain
    self.name = new_name
  end

  #self is the instance object of Startup class
  #it still needs to be passed into the FundingRound init method
  #adds the VC to the investors array
  def sign_contract(type, amount, venture_capitalist)
    new_round = FundingRound.new(type, amount.to_f, self, venture_capitalist)
    @investors_list << venture_capitalist
    @funds_received += amount
    new_round
  end

  #doesn't work yet! need to refactor connection between vc funding and startup receiving (through FundingRound)
  def total_funds
    @funds_received
  end

  #gives a return value that is not pretty, good start though
  def investors
    @investors_list
  end


  def big_investors
    @investors_list.select {|investors| VentureCapitalist.tres_commas.include?(investors)}
  end

end
