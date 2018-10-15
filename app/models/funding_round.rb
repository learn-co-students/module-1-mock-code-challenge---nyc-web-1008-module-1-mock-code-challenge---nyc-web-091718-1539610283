class FundingRound

  attr_accessor :investment #?can it change
  attr_reader :startup, :venture_capitalist, :type

  @@all = []

  def initialize(startup)
    @startup = startup
    @type = type
    @investment = investment
    @venture_capitalist = venture_capitalist
    @@all << self #funding rounds
  end

  def startup
    @startup
  end

  def venture_capitalist(venture_capitalist)
    @venture_capitalist
  end

  def type
    @type
  end

  def investment
    @investment = investment.to_f
  end

  def self.all
    @@all
  end
end
