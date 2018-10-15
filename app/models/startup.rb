class Startup

  attr_accessor :name
  attr_reader :founder, :domain, :funding_rounds

  @@all = []

  def initialize(founder)
    @founder = founder
    @@all << self
    @funding_rounds = []
  end

  def self.all
    @@all
  end

  def pivot(domain, name)
    @domain = domain
    @name = name
  end

  def self.find_by_founder(name)
    @@all.find {|su| su.founder == name}
  end

  def self.domains
    @@all.map {|startup| startup.domain }.uniq
  end

  def sign_contract(venture_capitalist, type, investment)
    return "You must have a positive investment" if investment < 0
    new_fr = FundingRound.new(self, type, investment)
    new_fr.venture_capitalist = venture_capitalist
    @funding_rounds << new_fr
    new_fr
  end

  def num_funding_rounds
    @funding_rounds.length
  end

  def total_funds
    total = 0.00
    @funding_rounds.map{|fr| fr.investment}.each do |inv|
      total += inv
    end # end addition
    total
  end

  def investors
    @funding_rounds.map{|fr| fr.venture_capitalist}.uniq
  end

  def big_investors
    @funding_rounds.map{|fr| fr.venture_capitalist}.select{|vc| vc.tres_commas == true}.uniq
  end

end
