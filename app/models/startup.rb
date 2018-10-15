class Startup
  attr_accessor :name
  attr_reader :founder, :domain

  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  def self.all
    @@all
  end

  def pivot(domain, name)
    @domain = domain
    @name = name
  end

  def sign_contract(venture_capitalist, type_of_investment, amount_invested)
    FundingRound.new(self, venture_capitalist, type_of_investment, amount_invested)
  end

  def funding_rounds
    FundingRound.all.select{|funding_round| funding_round.startup == self}
  end

  def num_funding_rounds
    funding_rounds.count
  end

  def total_funds
    funding_rounds.map{|funding_round| funding_round.investment}.reduce(:+)
  end

  # returns a unique array of investors for this instance
  def investors
    funding_rounds.map{|funding_round| funding_round.venture_capitalist}.uniq
  end

  # try using VentureCapitalist.tres_commas?
  def big_investors
    investors.select{|investor| investor.tres_commas}
  end

  def self.find_by_founder(founder_name)
    self.all.find{|startup| startup.founder == founder_name}
  end

  def self.domains
    self.all.map{|startup| startup.domain}.uniq
  end

end
