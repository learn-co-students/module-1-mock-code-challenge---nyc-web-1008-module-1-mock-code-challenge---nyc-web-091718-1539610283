class FundingRound
  attr_reader :startup, :venture_capitalist, :investment
  attr_accessor :type

  @@all = []

  def initialize(startup, venture_capitalist, type, investment)
    if investment >= 0 # can't initialize with a negative investment
      @startup = startup
      @venture_capitalist = venture_capitalist
      @type = type
      @investment = investment
      @@all << self
    else
      nil
    end
  end

  def self.all
    @@all
  end

  # custom setter
  def investment=(investment)
    @investment = investment if investment >= 0
  end

end
