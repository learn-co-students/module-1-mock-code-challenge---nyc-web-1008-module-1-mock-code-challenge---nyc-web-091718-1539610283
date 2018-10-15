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

  def self.find_by_founder(founder)
    @@all.find { |startup| startup.founder == founder }
  end

  def self.domains
    @@all.map { |startup| startup.domain}
  end

  def sign_contract(vc, type, investment)
    new_fr = FundingRound.new(self, vc1)
    new_fr.type = type
    new_fr.investment = investment
  end # this is as far as i got

end # end of startup class
