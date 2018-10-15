class FundingRound

  attr_accessor :startup, :venture_capitalist
  attr_reader :funding_round


@@all = []

def initialize(name, type, investment)
  @name = name
  @investment_type = investment_type
  @amount_invested = amount_invested
  @@all << self

end

def startup(founder, domain, name)
  startup = Startup.new(founder, domain, name)
end

def venture_capitalist(name)
  venture_capitalist = VentureCapitalist.new(name)
end

def type
  @type
end


def investment
  @investment
end


def self.all
  @@all
end


end

# - `FundingRound#startup`
#   - returns the startup object for that given funding round
#   - Once a funding round is created, I should not be able to change the startup
# - `FundingRound#venture_capitalist`
#   - returns the venture capitalist object for that given funding round
#   - Once a funding round is created, I should not be able to change the venture capitalist
# - `FundingRound#type`
#   - returns a **string** that is the type of funding round
#   - Examples include: Angel, Pre-Seed, Seed, Series A, Series B, Series C, etc.
# - `FundingRound#investment`
#   - returns a **number** that is the amount invested during this funding round
#   - This should be a float that is not a negative number.
# - `FundingRound.all`
#   - returns all of the funding rounds
