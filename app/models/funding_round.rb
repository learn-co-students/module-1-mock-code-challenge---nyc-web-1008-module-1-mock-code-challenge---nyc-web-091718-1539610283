class FundingRound

@@funding_all = []

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

attr_reader :startup, :venture_capitalist, :type, :investment

def initialize(startup, venture_capitalist)
  @startup = startup
  @venture_capitalist = venture_capitalist
  @type = ["Angel", "Pre-Seed", "Seed", "Series A", "Series B", "Series C"].sample
  @investment = rand(10000..1000000).to_f
  @@funding_all << self
end

# - `FundingRound.all`
#   - returns all of the funding rounds

def self.all
  @@funding_all
end

end #class FundingRound
