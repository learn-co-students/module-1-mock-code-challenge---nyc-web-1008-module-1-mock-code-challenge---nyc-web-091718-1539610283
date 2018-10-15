

class FundingRound

  attr_reader :startup, :type, :investment, :venture_capitalist

  @@all = []

  def self.all
    @@all
  end

  def initialize(startup, type, investment, venture_capitalist)
    @startup = startup
    @type = type
    @investment = investment
    @venture_capitalist = venture_capitalist
    @@all << self
  end

end
