class FundingRound

  attr_accessor :type, :investment
  attr_reader :funding_round, :startup, :venture_capitalist

  @@all = []

  def initialize(startup, venture_capitalist, type, amount)
    @startup = startup
    @venture_capitalist = venture_capitalist
    @type = ""
    @investment = 0
    @@all << self
  end

  def self.all
    @@all
  end


end
