# This is the JOIN TABLE
# FundingRound belongs_to VCs and Startups so it should have an attr_accessor for both
class FundingRound
  # attr_accessor
  attr_accessor :startup, :venture_capitalist
  attr_reader :round, :type

  @@all = []

  def initialize(startup, venture_capitalist, round, type)
    @startup = startup
    @venture_capitalist = venture_capitalist
    @round = round
    @type = type

    @@all << self
  end

  # -- STILL MUST DO --
  # - `FundingRound#investment`
  #   - returns a **number** that is the amount invested during this funding round - is this number in the initialization???
    # or somewhere in the VC class??????????
  #   - This should be a float that is not a negative number.

  def self.all
    @@all
  end





end # end of FundingRound class
