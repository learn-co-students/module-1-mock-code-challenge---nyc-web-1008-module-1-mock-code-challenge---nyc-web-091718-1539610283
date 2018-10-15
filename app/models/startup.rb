class Startup

attr_reader :name, :founder, :domain, :funding_rounds, :money, :investors
@@all = []

def initialize(name, founder, domain)
  @name = name
  @founder = founder
  @domain = domain
  @funding_rounds = 0
  @money = 0
  @@all << self


end

def self.all
  @@all
end

def pivot(name, domain)
  @name = name
  @domain = domain
end

def self.find_by_founder(name)
  Startup.all.select {|inc| inc.founder == name}
end

def self.domains
  @@all.domains
end

def sign_contract(investor, type, amt)
  FundingRound.new(investor, self, type, amt)
  @funding_rounds += 1
  @money += amt
  @investors << investor

end

def num_funding_rounds
  @funding_rounds
end

def total_funds
  @money
end

def big_investors
  @investors.select {|inves| inves.tres_commas?}
end

end #clsend
